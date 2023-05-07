extension UrlUtil on String {
  String generateUrl(List<String> subPaths) {
    var pathL = [this, ...subPaths].map(
      (e) {
        return e.replaceAll(RegExp(r'^\/|\/$'), '');
      },
    ).join('/');
    pathL = pathL.replaceAll(RegExp(r'^\/|\/$'), '');
    return Uri.parse('///$pathL').toFilePath();
  }
}
