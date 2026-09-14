import '../../data/db/database.dart';

/// `amals.target` value meaning "no goal — any amount completes the day".
///
/// Nothing has ever written 0: the form and the seeds both require at least 1,
/// so the sentinel needs no migration.
const int kOpenEndedTarget = 0;

/// How an amal's daily amount turns into "done". Every completion verdict in
/// the app goes through [meets].
extension AmalGoal on AmalRow {
  bool get isOpenEnded => target == kOpenEndedTarget;
  bool get isSimple => target == 1;
  bool get isCounted => target > 1;

  bool meets(int progress) => isOpenEnded ? progress > 0 : progress >= target;
}
