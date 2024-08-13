import 'dart:developer';

import 'package:example/core/extension/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonVarientKnob extends Knob<ButtonVarient> {
  ButtonVarientKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            ButtonVarient.filled.name.capitalize(),
            ButtonVarient.ghost.name.capitalize(),
            ButtonVarient.link.name.capitalize(),
            ButtonVarient.outline.name.capitalize(),
          ],
          initialValue: initialValue,
        ),
      ];

  @override
  ButtonVarient valueFromQueryGroup(Map<String, String> group) {
    log(group.toString());
    if (group[label] == ButtonVarient.filled.name.capitalize()) {
      return ButtonVarient.filled;
    }
    if (group[label] == ButtonVarient.ghost.name.capitalize()) {
      return ButtonVarient.ghost;
    }
    if (group[label] == ButtonVarient.link.name.capitalize()) {
      return ButtonVarient.link;
    }
    if (group[label] == ButtonVarient.outline.name.capitalize()) {
      return ButtonVarient.outline;
    } else {
      return ButtonVarient.filled;
    }
  }
}

class ButtonStateKnob extends Knob<ButtonState> {
  ButtonStateKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            "Default",
            "Disable",
            "Depressed",
            "Error",
            "Error Depressed"
          ],
          initialValue: initialValue,
        )
      ];

  @override
  ButtonState valueFromQueryGroup(Map<String, String> group) {
    if (group[label] == "Default") {
      return ButtonState.defaultState();
    }
    if (group[label] == "Disable") {
      return ButtonState.disable();
    }
    if (group[label] == "Depressed") {
      return ButtonState.depressed();
    }
    if (group[label] == "Error") {
      return ButtonState.error();
    }
    if (group[label] == "Error Depressed") {
      return ButtonState.errorDepressed();
    } else {
      return ButtonState.defaultState();
    }
  }
}

class ButtonSizeKnob extends Knob<ButtonSize> {
  ButtonSizeKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            ButtonSize.small.name.capitalize(),
            ButtonSize.medium.name.capitalize(),
            ButtonSize.large.name.capitalize(),
            ButtonSize.custom.name.capitalize()
          ],
          initialValue: initialValue,
        )
      ];

  @override
  ButtonSize valueFromQueryGroup(Map<String, String> group) {
    if (group[label] == ButtonSize.small.name.capitalize()) {
      return ButtonSize.small;
    }
    if (group[label] == ButtonSize.medium.name.capitalize()) {
      return ButtonSize.medium;
    }
    if (group[label] == ButtonSize.large.name.capitalize()) {
      return ButtonSize.large;
    }
    if (group[label] == ButtonSize.custom.name.capitalize()) {
      return ButtonSize.custom;
    } else {
      return ButtonSize.small;
    }
  }
}

// class PrefixIconKnob extends Knob<IconData> {
//   PrefixIconKnob({required super.label});

//   final List<IconData> icons = [
//     Icons.access_alarm,
//     Icons.access_time,
//     Icons.accessibility,
//     Icons.accessibility_new,
//     Icons.accessible,
//     Icons.accessible_forward,
//     Icons.account_balance,
//     Icons.account_balance_wallet,
//     Icons.account_box,
//     Icons.account_circle,
//     Icons.add,
//     Icons.add_alarm,
//     Icons.add_alert,
//     Icons.add_box,
//     Icons.add_business,
//     Icons.add_circle,
//     Icons.add_circle_outline,
//     Icons.add_comment,
//     Icons.add_location,
//     Icons.add_location_alt,
//     Icons.add_photo_alternate,
//     Icons.add_shopping_cart,
//     Icons.add_to_drive,
//     Icons.add_to_home_screen,
//     Icons.add_to_photos,
//     Icons.add_to_queue,
//     Icons.adjust,
//     Icons.airline_seat_flat,
//     Icons.airline_seat_flat_angled,
//     Icons.airline_seat_individual_suite,
//     Icons.airline_seat_legroom_extra,
//     Icons.airline_seat_legroom_normal,
//     Icons.airline_seat_legroom_reduced,
//     Icons.airline_seat_recline_extra,
//     Icons.airline_seat_recline_normal,
//     Icons.airplanemode_active,
//     Icons.airplanemode_inactive,
//     Icons.airplay,
//     Icons.airport_shuttle,
//     Icons.alarm,
//     Icons.alarm_add,
//     Icons.alarm_off,
//     Icons.alarm_on,
//     Icons.album,
//     Icons.all_inbox,
//     Icons.all_inclusive,
//     Icons.alt_route,
//     Icons.alternate_email,
//     Icons.announcement,
//     Icons.apartment,
//     Icons.api,
//     Icons.app_blocking,
//     Icons.app_registration,
//     Icons.app_settings_alt,
//     Icons.apps,
//     Icons.archive,
//     Icons.arrow_back,
//     Icons.arrow_back_ios,
//     Icons.arrow_circle_down,
//     Icons.arrow_circle_up,
//     Icons.arrow_downward,
//     Icons.arrow_drop_down,
//     Icons.arrow_drop_down_circle,
//     Icons.arrow_drop_up,
//     Icons.arrow_forward,
//     Icons.arrow_forward_ios,
//     Icons.arrow_left,
//     Icons.arrow_right,
//     Icons.arrow_right_alt,
//     Icons.arrow_upward,
//     Icons.art_track,
//     Icons.article,
//     Icons.aspect_ratio,
//     Icons.assessment,
//     Icons.assignment,
//     Icons.assignment_ind,
//     Icons.assignment_late,
//     Icons.assignment_return,
//     Icons.assignment_returned,
//     Icons.assignment_turned_in,
//     Icons.assistant,
//     Icons.assistant_photo,
//     Icons.atm,
//     Icons.attach_email,
//     Icons.attach_file,
//     Icons.attach_money,
//     Icons.attachment,
//     Icons.audiotrack,
//     Icons.auto_delete,
//     Icons.autorenew,
//     Icons.av_timer,
//     Icons.baby_changing_station,
//     Icons.backpack,
//     Icons.backspace,
//     Icons.backup,
//     Icons.backup_table,
//     Icons.ballot,
//     Icons.bar_chart,
//     Icons.batch_prediction,
//     Icons.bathtub,
//     Icons.battery_alert,
//     Icons.battery_charging_full,
//     Icons.battery_full,
//     Icons.battery_std,
//     Icons.battery_unknown,
//     Icons.beach_access,
//     Icons.bedtime,
//     Icons.beenhere,
//     Icons.bento,
//     Icons.bike_scooter,
//     Icons.biotech,
//     Icons.block,
//     Icons.bluetooth,
//     Icons.bluetooth_audio,
//     Icons.bluetooth_connected,
//     Icons.bluetooth_disabled,
//     Icons.bluetooth_searching,
//     Icons.blur_circular,
//     Icons.blur_linear,
//     Icons.blur_off,
//     Icons.blur_on,
//     Icons.book,
//     Icons.book_online,
//     Icons.bookmark,
//     Icons.bookmark_border,
//     Icons.bookmark_outline,
//     Icons.bookmarks,
//     Icons.border_all,
//     Icons.border_bottom,
//     Icons.border_clear,
//     Icons.border_color,
//     Icons.border_horizontal,
//     Icons.border_inner,
//     Icons.border_left,
//     Icons.border_outer,
//     Icons.border_right,
//     Icons.border_style,
//     Icons.border_top,
//     Icons.border_vertical,
//     Icons.branding_watermark,
//     Icons.breakfast_dining,
//     Icons.brightness_1,
//     Icons.brightness_2,
//     Icons.brightness_3,
//     Icons.brightness_4,
//     Icons.brightness_5,
//     Icons.brightness_6,
//     Icons.brightness_7,
//     Icons.brightness_auto,
//     Icons.brightness_high,
//     Icons.brightness_low,
//     Icons.brightness_medium,
//     Icons.broken_image,
//     Icons.browser_not_supported,
//     Icons.brunch_dining,
//     Icons.brush,
//     Icons.bubble_chart,
//     Icons.bug_report,
//     Icons.build,
//     Icons.build_circle,
//     Icons.burst_mode,
//     Icons.business,
//     Icons.business_center,
//     Icons.cached,
//     Icons.cake,
//     Icons.calculate,
//     Icons.calendar_today,
//     Icons.calendar_view_day,
//     Icons.call,
//     Icons.call_end,
//     Icons.call_made,
//     Icons.call_merge,
//     Icons.call_missed,
//     Icons.call_missed_outgoing,
//     Icons.call_received,
//     Icons.call_split,
//     Icons.call_to_action,
//     Icons.camera,
//     Icons.camera_alt,
//     Icons.camera_enhance,
//     Icons.camera_front,
//     Icons.camera_rear,
//     Icons.camera_roll,
//     Icons.campaign,
//     Icons.cancel,
//     Icons.cancel_presentation,
//     Icons.cancel_schedule_send,
//     Icons.card_giftcard,
//     Icons.card_membership,
//     Icons.card_travel,
//     Icons.carpenter,
//     Icons.cases,
//     Icons.casino,
//     Icons.cast,
//     Icons.cast_connected,
//     Icons.cast_for_education,
//     Icons.category,
//     Icons.cell_wifi,
//     Icons.center_focus_strong,
//     Icons.center_focus_weak,
//     Icons.change_history,
//     Icons.charging_station,
//     Icons.chat,
//     Icons.chat_bubble,
//     Icons.chat_bubble_outline,
//     Icons.check,
//     Icons.check_box,
//     Icons.check_box_outline_blank,
//     Icons.check_circle,
//     Icons.check_circle_outline,
//     Icons.checkroom,
//     Icons.chevron_left,
//     Icons.chevron_right,
//     Icons.child_care,
//     Icons.child_friendly,
//     Icons.chrome_reader_mode,
//     Icons.circle,
//     Icons.circle_notifications,
//     Icons.class_,
//     Icons.clean_hands,
//     Icons.cleaning_services,
//     Icons.clear,
//     Icons.clear_all,
//     Icons.close,
//     Icons.close_fullscreen,
//     Icons.closed_caption,
//     Icons.closed_caption_disabled,
//     Icons.cloud,
//     Icons.cloud_circle,
//     Icons.cloud_done,
//     Icons.cloud_download,
//     Icons.cloud_off,
//     Icons.cloud_queue,
//     Icons.cloud_upload,
//     Icons.code,
//     Icons.collections,
//     Icons.collections_bookmark,
//     Icons.color_lens,
//     Icons.colorize,
//     Icons.comment,
//     Icons.commute,
//     Icons.compare,
//     Icons.compare_arrows,
//     Icons.compass_calibration,
//     Icons.computer,
//     Icons.confirmation_num,
//     Icons.confirmation_number,
//     Icons.connect_without_contact,
//     Icons.connected_tv,
//     Icons.construction,
//     Icons.contact_mail,
//     Icons.contact_page,
//     Icons.contact_phone,
//     Icons.contact_support,
//     Icons.contactless,
//     Icons.contacts,
//     Icons.content_copy,
//     Icons.content_cut,
//     Icons.content_paste,
//     Icons.control_camera,
//     Icons.control_point,
//     Icons.control_point_duplicate,
//     Icons.copy,
//     Icons.copy_all,
//     Icons.copyright,
//     Icons.coronavirus,
//     Icons.corporate_fare,
//     Icons.cottage,
//     Icons.countertops,
//     Icons.create,
//     Icons.create_new_folder,
//     Icons.credit_card,
//     Icons.crop,
//     Icons.crop_16_9,
//     Icons.crop_3_2,
//     Icons.crop_5_4,
//     Icons.crop_7_5,
//     Icons.crop_din,
//     Icons.crop_free,
//     Icons.crop_landscape,
//     Icons.crop_original,
//     Icons.crop_portrait,
//     Icons.crop_rotate,
//     Icons.crop_square,
//     Icons.cut,
//     Icons.dangerous,
//     Icons.dark_mode,
//     Icons.dashboard,
//     Icons.dashboard_customize,
//     Icons.data_usage,
//     Icons.date_range,
//     Icons.deck,
//     Icons.dehaze,
//     Icons.delete,
//     Icons.delete_forever,
//     Icons.delete_outline,
//     Icons.delete_sweep,
//     Icons.delivery_dining,
//     Icons.departure_board,
//     Icons.description,
//     Icons.design_services,
//     Icons.desktop_access_disabled,
//     Icons.desktop_mac,
//     Icons.desktop_windows,
//     Icons.details,
//     Icons.developer_board,
//     Icons.developer_mode,
//     Icons.device_hub,
//     Icons.device_thermostat,
//     Icons.device_unknown,
//     Icons.devices,
//     Icons.devices_other,
//     Icons.dialer_sip,
//     Icons.dialpad,
//     Icons.dinner_dining,
//     Icons.directions,
//     Icons.directions_bike,
//     Icons.directions_boat,
//     Icons.directions_bus,
//     Icons.directions_car,
//     Icons.directions_railway,
//     Icons.directions_run,
//     Icons.directions_subway,
//     Icons.directions_walk,
//     Icons.disabled_by_default,
//     Icons.disc_full,
//     Icons.dnd_forwardslash,
//     Icons.dns,
//     Icons.do_disturb,
//     Icons.do_disturb_alt,
//     Icons.do_disturb_off,
//     Icons.do_disturb_on,
//     Icons.do_not_disturb,
//     Icons.do_not_disturb_alt,
//     Icons.do_not_disturb_off,
//     Icons.do_not_disturb_on,
//     Icons.do_not_step,
//     Icons.do_not_touch,
//     Icons.dock,
//     Icons.domain,
//     Icons.domain_disabled,
//     Icons.done,
//     Icons.done_all,
//     Icons.done_outline,
//     Icons.donut_large,
//     Icons.donut_small,
//     Icons.door_sliding,
//     Icons.doorbell,
//     Icons.double_arrow,
//     Icons.downhill_skiing,
//     Icons.download,
//     Icons.download_done,
//     Icons.download_for_offline,
//     Icons.download_outlined,
//   ];

//   @override
//   List<Field> get fields => [
//         ListField(
//           name: label,
//           values: icons,
//           initialValue: initialValue,
//         )
//       ];

//   @override
//   IconData valueFromQueryGroup(Map<String, String> group) {

//   }
// }
