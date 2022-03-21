part of three_camera;

class OrthographicCamera extends Camera {
  OrthographicCamera(
      [num left = -1,
      num right = 1,
      num top = 1,
      num bottom = -1,
      num near = 0.1,
      num far = 2000])
      : super() {
    type = 'OrthographicCamera';
    isOrthographicCamera = true;
    zoom = 1;

    view = null;

    this.left = left;
    this.right = right;
    this.top = top;
    this.bottom = bottom;

    this.near = near;
    this.far = far;

    updateProjectionMatrix();
  }

  @override
  copy(source, [bool? recursive]) {
    super.copy(source, recursive);

    OrthographicCamera source1 = source as OrthographicCamera;

    left = source1.left;
    right = source1.right;
    top = source1.top;
    bottom = source1.bottom;
    near = source1.near;
    far = source1.far;

    zoom = source1.zoom;
    view =
        source1.view == null ? null : json.decode(json.encode(source1.view));

    return this;
  }

  setViewOffset(fullWidth, fullHeight, x, y, width, height) {
    view ??= {
        "enabled": true,
        "fullWidth": 1,
        "fullHeight": 1,
        "offsetX": 0,
        "offsetY": 0,
        "width": 1,
        "height": 1
    };

    view!["enabled"] = true;
    view!["fullWidth"] = fullWidth;
    view!["fullHeight"] = fullHeight;
    view!["offsetX"] = x;
    view!["offsetY"] = y;
    view!["width"] = width;
    view!["height"] = height;

    updateProjectionMatrix();
  }

  clearViewOffset() {
    if (view != null) {
      view!["enabled"] = false;
    }

    updateProjectionMatrix();
  }

  @override
  updateProjectionMatrix() {
    var dx = (this.right - this.left) / (2 * zoom);
    var dy = (this.top - this.bottom) / (2 * zoom);
    var cx = (this.right + this.left) / 2;
    var cy = (this.top + this.bottom) / 2;

    var left = cx - dx;
    var right = cx + dx;
    var top = cy + dy;
    var bottom = cy - dy;

    if (view != null && view!["enabled"]) {
      var scaleW =
          (this.right - this.left) / view!["fullWidth"] / zoom;
      var scaleH =
          (this.top - this.bottom) / view!["fullHeight"] / zoom;

      left += scaleW * view!["offsetX"];
      right = left + scaleW * view!["width"];
      top -= scaleH * view!["offsetY"];
      bottom = top - scaleH * view!["height"];
    }

    projectionMatrix.makeOrthographic(left, right, top, bottom, near, far);

    projectionMatrixInverse.copy(projectionMatrix).invert();
  }

  @override
  toJSON({Object3dMeta? meta}) {
    var data = super.toJSON(meta: meta);

    data["object"]["zoom"] = zoom;
    data["object"]["left"] = left;
    data["object"]["right"] = right;
    data["object"]["top"] = top;
    data["object"]["bottom"] = bottom;
    data["object"]["near"] = near;
    data["object"]["far"] = far;

    if (view != null) {
      data["object"]["view"] = json.decode(json.encode(view));
    }

    return data;
  }
}
