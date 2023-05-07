import 'package:async/async.dart';

extension StreamMerge on Stream {
  Stream merge(Iterable<Stream> streams) {
    var group = StreamGroup();
    streams.forEach(group.add);
    group.add(this);
    group.close();
    return group.stream;
  }
}
