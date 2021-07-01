part of three_materials;


/**
 * parameters = {
 *  clearcoat: <float>,
 *  clearcoatMap: new THREE.Texture( <Image> ),
 *  clearcoatRoughness: <float>,
 *  clearcoatRoughnessMap: new THREE.Texture( <Image> ),
 *  clearcoatNormalScale: <Vector2>,
 *  clearcoatNormalMap: new THREE.Texture( <Image> ),
 *
 *  reflectivity: <float>,
 *  ior: <float>,
 *
 *  sheen: <Color>,
 *
 *  transmission: <float>,
 *  transmissionMap: new THREE.Texture( <Image> )
 * }
 */

class MeshPhysicalMaterial extends MeshStandardMaterial {

  bool isMeshPhysicalMaterial = true;
  num clearcoat = 0.0;
  Texture? clearcoatMap;
  num clearcoatRoughness = 0.0;
  String type = 'MeshPhysicalMaterial';
  Texture? clearcoatRoughnessMap;
  Vector2? clearcoatNormalScale = Vector2( 1, 1 );
  Texture? clearcoatNormalMap;
  num? reflectivity = 0.5;

  // null will disable sheen bsdf
  Color? sheen;

  num transmission = 0.0;
  Texture? transmissionMap;


  MeshPhysicalMaterial( parameters ) : super(parameters) {
    this.defines = {
      'STANDARD': '',
      'PHYSICAL': ''
    };
  
    this.setValues( parameters );
  }


  get ior => ( 1 + 0.4 * this.reflectivity! ) / ( 1 - 0.4 * this.reflectivity! );
  set ior(value) {
    this.reflectivity = MathUtils.clamp( 2.5 * ( value - 1 ) / ( value + 1 ), 0, 1 );
  }


  copy( source ) {

    super.copy( source );

    this.defines = {

      'STANDARD': '',
      'PHYSICAL': ''

    };

    this.clearcoat = source.clearcoat;
    this.clearcoatMap = source.clearcoatMap;
    this.clearcoatRoughness = source.clearcoatRoughness;
    this.clearcoatRoughnessMap = source.clearcoatRoughnessMap;
    this.clearcoatNormalMap = source.clearcoatNormalMap;
    this.clearcoatNormalScale!.copy( source.clearcoatNormalScale );

    this.reflectivity = source.reflectivity;

    if ( source.sheen ) {

      this.sheen = ( this.sheen ?? new Color(1,1,1) ).copy( source.sheen );

    } else {

      this.sheen = null;

    }

    this.transmission = source.transmission;
    this.transmissionMap = source.transmissionMap;

    return this;

  }


}