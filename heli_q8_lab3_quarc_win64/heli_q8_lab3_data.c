/*
 * heli_q8_lab3_data.c
 *
 * Code generation for model "heli_q8_lab3".
 *
 * Model version              : 1.62
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Tue Sep 25 12:53:32 2018
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "heli_q8_lab3.h"
#include "heli_q8_lab3_private.h"

/* Block parameters (auto storage) */
P_heli_q8_lab3_T heli_q8_lab3_P = {
  /*  Variable: A_4
   * Referenced by: '<S6>/A'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0, -0.61173902876295927, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0 },

  /*  Variable: B_4
   * Referenced by: '<S6>/B'
   */
  { 0.0, 0.0, 0.0, 0.08504551365409628, 0.0, 0.0, 0.0, 0.52848484848484878, 0.0,
    0.0, 0.0, 0.0 },

  /*  Variable: C_4
   * Referenced by: '<S6>/C'
   */
  { 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0,
    0.0, 0.0, 0.0 },
  2.0,                                 /* Variable: Joystick_gain_x
                                        * Referenced by: '<S8>/Joystick_gain_x'
                                        */
  2.0,                                 /* Variable: Joystick_gain_y
                                        * Referenced by: '<S8>/Joystick_gain_y'
                                        */

  /*  Variable: K
   * Referenced by: '<S9>/Gain2'
   */
  { -2.9579415978686784E-16, 3.5775474652404968, 4.3275091838333288E-16,
    3.74684984434534, 11.295362197702595, 2.6891754039335996E-16,
    -3.264358767240342E-16, 0.70710678118654713, 2.236067977499792,
    -5.6574397553591374E-17 },

  /*  Variable: L_4
   * Referenced by: '<S6>/L'
   */
  { 101.20026547112099, 2560.6018723525326, -0.49133660035271914,
    -24.622137840745022, 0.0090619795350515148, -0.0045731259800618762,
    0.52456100674490747, 26.431658095504186, 101.27826700163592,
    2564.3670164346618, -0.1796274931023564, -8.8995692604956815,
    0.22136865311907894, 11.338254788948598, 0.74563197927101121,
    37.72007395021361, 101.17145411742882, 2559.2763230670471 },

  /*  Variable: P
   * Referenced by: '<S9>/Gain1'
   */
  { -2.9579415978686779E-16, 3.5775474652404968, 11.295362197702593,
    2.6891754039336E-16 },
  -31.5,                               /* Variable: elevation_offset
                                        * Referenced by: '<S7>/Elevation offset'
                                        */
  10.0,                                /* Mask Parameter: HILInitialize_analog_input_maxi
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  -10.0,                               /* Mask Parameter: HILInitialize_analog_input_mini
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  10.0,                                /* Mask Parameter: HILInitialize_analog_output_max
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  -10.0,                               /* Mask Parameter: HILInitialize_analog_output_min
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_final_analog_outp
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_final_pwm_outputs
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_initial_analog_ou
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_initial_pwm_outpu
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  24305.934065934067,                  /* Mask Parameter: HILInitialize_pwm_frequency
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_pwm_leading_deadb
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_pwm_trailing_dead
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outputs
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_k
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_set_other_outpu_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_watchdog_analog_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0,                                 /* Mask Parameter: HILInitialize_watchdog_pwm_outp
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILReadEncoderTimebase_clock
                                        * Referenced by: '<S7>/HIL Read Encoder Timebase'
                                        */

  /*  Mask Parameter: HILInitialize_hardware_clocks
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0, 1, 2 },
  0,                                   /* Mask Parameter: HILInitialize_initial_encoder_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_alignment
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_configuration
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_pwm_modes
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_pwm_polarity
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_watchdog_digital_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */

  /*  Mask Parameter: HILInitialize_analog_input_chan
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILInitialize_analog_output_cha
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILReadEncoderTimebase_channels
   * Referenced by: '<S7>/HIL Read Encoder Timebase'
   */
  { 0U, 1U, 2U },

  /*  Mask Parameter: HILWriteAnalog_channels
   * Referenced by: '<S7>/HIL Write Analog'
   */
  { 0U, 1U },

  /*  Mask Parameter: HILInitialize_encoder_channels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },

  /*  Mask Parameter: HILInitialize_pwm_channels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U },
  4U,                                  /* Mask Parameter: HILInitialize_quadrature
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  500U,                                /* Mask Parameter: HILReadEncoderTimebase_samples_
                                        * Referenced by: '<S7>/HIL Read Encoder Timebase'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_active
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_final_digital_out
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_initial_digital_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_input_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_inpu_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_output
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_b
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_outp_e
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_analog_out_ex
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_analog_outp_p
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_frequen
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_frequ_e
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_params_
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_clock_param_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_outpu
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_b
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_digital_out_c
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_ou_c1
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_a
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_digital_out_j
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_digital_out_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_encoder_count
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_encoder_cou_k
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_encoder_param
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_encoder_par_m
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_other_outpu_l
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_a
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_g
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_p
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_output_ap
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_outputs_o
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  1,                                   /* Mask Parameter: HILInitialize_set_pwm_params_at
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0,                                   /* Mask Parameter: HILInitialize_set_pwm_params__f
                                        * Referenced by: '<Root>/HIL Initialize'
                                        */
  0.0015339807878856412,               /* Expression: 2*pi /4096
                                        * Referenced by: '<S7>/Pitch: Count to rad'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S14>/Gain'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S1>/Gain1'
                                        */
  -0.0015339807878856412,              /* Expression: -2 * pi /4096
                                        * Referenced by: '<S7>/Elevation: Count to rad'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S12>/Gain'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S2>/Gain1'
                                        */
  0.00076699039394282058,              /* Expression: 2*pi/8192
                                        * Referenced by: '<S7>/Travel: Count to rad'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S16>/Gain'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S3>/Gain1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S8>/Rate Transition: x'
                                        */
  -0.1,                                /* Expression: -0.1
                                        * Referenced by: '<S8>/Dead Zone: x'
                                        */
  0.1,                                 /* Expression: 0.1
                                        * Referenced by: '<S8>/Dead Zone: x'
                                        */
  1.1111111111111112,                  /* Expression: 10/9
                                        * Referenced by: '<S8>/Gain: x'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S8>/Rate Transition: y'
                                        */
  -0.1,                                /* Expression: -0.1
                                        * Referenced by: '<S8>/Dead Zone: y'
                                        */
  0.1,                                 /* Expression: 0.1
                                        * Referenced by: '<S8>/Dead Zone: y'
                                        */
  1.1111111111111112,                  /* Expression: 10/9
                                        * Referenced by: '<S8>/Gain: y'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S6>/Integrator'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S9>/gamma'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S9>/delta'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S4>/Back gain'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S4>/Front gain'
                                        */
  -50.0,                               /* Computed Parameter: ElevationTransferFcn_A
                                        * Referenced by: '<S7>/Elevation: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: ElevationTransferFcn_C
                                        * Referenced by: '<S7>/Elevation: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: ElevationTransferFcn_D
                                        * Referenced by: '<S7>/Elevation: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S13>/Gain'
                                        */
  -50.0,                               /* Computed Parameter: PitchTransferFcn_A
                                        * Referenced by: '<S7>/Pitch: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: PitchTransferFcn_C
                                        * Referenced by: '<S7>/Pitch: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: PitchTransferFcn_D
                                        * Referenced by: '<S7>/Pitch: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S15>/Gain'
                                        */
  -50.0,                               /* Computed Parameter: TravelTransferFcn_A
                                        * Referenced by: '<S7>/Travel: Transfer Fcn'
                                        */
  -2500.0,                             /* Computed Parameter: TravelTransferFcn_C
                                        * Referenced by: '<S7>/Travel: Transfer Fcn'
                                        */
  50.0,                                /* Computed Parameter: TravelTransferFcn_D
                                        * Referenced by: '<S7>/Travel: Transfer Fcn'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S17>/Gain'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S7>/Front motor: Saturation'
                                        */
  -5.0,                                /* Expression: -5
                                        * Referenced by: '<S7>/Front motor: Saturation'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S7>/Back motor: Saturation'
                                        */
  -5.0,                                /* Expression: -5
                                        * Referenced by: '<S7>/Back motor: Saturation'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S11>/Integrator'
                                        */
  0.0,                                 /* Expression: inf
                                        * Referenced by: '<S11>/Integrator'
                                        */
  0.0,                                 /* Expression: -inf
                                        * Referenced by: '<S11>/Integrator'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S11>/K_ei'
                                        */
  12U,                                 /* Computed Parameter: GameController_BufferSize
                                        * Referenced by: '<S8>/Game Controller'
                                        */
  1U,                                  /* Computed Parameter: GameController_ControllerNumber
                                        * Referenced by: '<S8>/Game Controller'
                                        */
  1,                                   /* Computed Parameter: HILReadEncoderTimebase_Active
                                        * Referenced by: '<S7>/HIL Read Encoder Timebase'
                                        */
  0,                                   /* Computed Parameter: HILWriteAnalog_Active
                                        * Referenced by: '<S7>/HIL Write Analog'
                                        */
  0,                                   /* Computed Parameter: GameController_AutoCenter
                                        * Referenced by: '<S8>/Game Controller'
                                        */
  1                                    /* Computed Parameter: GameController_Enabled
                                        * Referenced by: '<S8>/Game Controller'
                                        */
};
