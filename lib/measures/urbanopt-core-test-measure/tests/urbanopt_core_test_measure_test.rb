# *********************************************************************************
# URBANopt (tm), Copyright (c) Alliance for Sustainable Energy, LLC.
# See also https://github.com/urbanopt/urbanopt-core-gem/blob/develop/LICENSE.md
# *********************************************************************************

require 'openstudio'
require 'openstudio/measure/ShowRunnerOutput'
require 'fileutils'

require_relative '../measure'
require 'minitest/autorun'

class UrbanoptCoreTestMeasureTest < Minitest::Test
  def test_urbanopt_core_test_measure_bad_input
    # create an instance of the measure
    measure = UrbanoptCoreTestMeasure.new

    # create an instance of a runner
    runner = OpenStudio::Measure::OSRunner.new(OpenStudio::WorkflowJSON.new)

    # make an empty model
    model = OpenStudio::Model::Model.new

    # get arguments and test that they are what we are expecting
    arguments = measure.arguments(model)
    assert_equal(2, arguments.size)
    assert_equal('meter_name', arguments[0].name)
    assert_equal('reporting_frequency', arguments[1].name)

    # set argument values to bad values and run the measure
    argument_map = OpenStudio::Measure.convertOSArgumentVectorToMap(arguments)
    meter_name = arguments[0].clone
    assert(meter_name.setValue(''))
    argument_map['meter_name'] = meter_name
    measure.run(model, runner, argument_map)
    result = runner.result
    assert(result.value.valueName == 'Fail')
  end

  def test_urbanopt_core_test_measure_good_input
    # create an instance of the measure
    measure = UrbanoptCoreTestMeasure.new

    # create an instance of a runner
    runner = OpenStudio::Measure::OSRunner.new(OpenStudio::WorkflowJSON.new)

    # make an empty model
    model = OpenStudio::Model::Model.new

    # get arguments and test that they are what we are expecting
    arguments = measure.arguments(model)

    # set argument values to good values and run the measure on model with spaces
    argument_map = OpenStudio::Measure.convertOSArgumentVectorToMap(arguments)
    meter_name = arguments[0].clone
    assert(meter_name.setValue('JustATest'))
    argument_map['meter_name'] = meter_name
    reporting_frequency = arguments[1].clone
    assert(reporting_frequency.setValue('hourly'))
    argument_map['reporting_frequency'] = reporting_frequency
    measure.run(model, runner, argument_map)
    result = runner.result
    show_output(result)
    assert(result.value.valueName == 'Success')
    assert(result.warnings.empty?)
    assert(result.info.size == 1)

    # attempt to add a second meter
    # create an instance of the measure
    measure = UrbanoptCoreTestMeasure.new

    # create an instance of a runner
    runner = OpenStudio::Measure::OSRunner.new(OpenStudio::WorkflowJSON.new)

    measure.run(model, runner, argument_map)

    result = runner.result
    show_output(result)
    assert(result.value.valueName == 'Success')
    assert(result.warnings.size == 1)
    assert(result.info.empty?)
  end
end
