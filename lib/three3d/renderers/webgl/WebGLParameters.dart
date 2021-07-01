part of three_webgl;

class WebGLParameters {
  late bool isWebGL2;
  String? shaderID;
  late String shaderName;

  late String vertexShader;
  late String fragmentShader;

  Map<String, dynamic>? defines;

  bool isRawShaderMaterial = false;
  String? glslVersion;

  late String precision;

  late bool instancing;
  late bool instancingColor;

  late bool supportsVertexTextures;
  late int outputEncoding;
  late bool map;
  late int mapEncoding;
  late bool matcap;
  late int matcapEncoding;
  late bool envMap;
  late bool envMapMode;
  late int envMapEncoding;
  late bool envMapCubeUV;
  late bool lightMap;
  late int lightMapEncoding;
  late bool aoMap;
  late bool emissiveMap;
  late int emissiveMapEncoding;
  late bool bumpMap;
  late bool normalMap;
  late bool objectSpaceNormalMap;
  late bool tangentSpaceNormalMap;
  late bool clearcoatMap;
  late bool clearcoatRoughnessMap;
  late bool clearcoatNormalMap;
  late bool displacementMap;
  late bool roughnessMap;
  late bool metalnessMap;
  late bool specularMap;
  late bool alphaMap;
  late bool gradientMap;
  late bool sheen;
  late bool transmissionMap;
  int? combine;
  late bool vertexTangents;
  late bool vertexColors;
  late bool vertexUvs;
  late bool uvsVertexOnly;
  late bool fog;
  late bool useFog;
  late bool fogExp2;
  late bool flatShading;
  late bool sizeAttenuation;
  late bool logarithmicDepthBuffer;

  late bool skinning;
  late num maxBones;
  late bool useVertexTexture;

  late bool morphTargets;
  late bool morphNormals;
  late num maxMorphTargets;
  late num maxMorphNormals;

  late num numDirLights;
  late num numPointLights;
  late num numSpotLights;
  late num numRectAreaLights;
  late num numHemiLights;

  late num numDirLightShadows;
  late num numPointLightShadows;
  late num numSpotLightShadows;

  late num numClippingPlanes;
  late num numClipIntersection;
  late bool dithering;
  late bool shadowMapEnabled;
  late int shadowMapType;
  late int toneMapping;
  late bool physicallyCorrectLights;
  late bool premultipliedAlpha;
  late num alphaTest;

  late bool doubleSided;
  late bool flipSided;

  late int depthPacking;

  String? index0AttributeName;

  late bool extensionDerivatives;
  late bool extensionFragDepth;
  late bool extensionDrawBuffers;
  late bool extensionShaderTextureLOD;

  late bool rendererExtensionFragDepth;
  late bool rendererExtensionDrawBuffers;
  late bool rendererExtensionShaderTextureLod;
  late String customProgramCacheKey;

  Map<String, dynamic>? uniforms;


  WebGLParameters(Map<String, dynamic> json) {
    isWebGL2 = json["isWebGL2"];
    shaderID = json["shaderID"];
    shaderName = json["shaderName"];

    vertexShader = json["vertexShader"];
    fragmentShader = json["fragmentShader"];

    defines = json["defines"];

    isRawShaderMaterial = json["isRawShaderMaterial"];
    glslVersion = json["glslVersion"];

    precision = json["precision"];

    instancing = json["instancing"];
    instancingColor = json["instancingColor"];

    supportsVertexTextures = json["supportsVertexTextures"];
    outputEncoding = json["outputEncoding"];
    map = json["map"];
    mapEncoding = json["mapEncoding"];
    matcap = json["matcap"];
    matcapEncoding = json["matcapEncoding"];
    envMap = json["envMap"];
    envMapMode = json["envMapMode"];
    envMapEncoding = json["envMapEncoding"];
    envMapCubeUV = json["envMapCubeUV"];
    lightMap = json["lightMap"];
    lightMapEncoding = json["lightMapEncoding"];
    aoMap = json["aoMap"];
    emissiveMap = json["emissiveMap"];

    emissiveMapEncoding = json["emissiveMapEncoding"];
    bumpMap = json["bumpMap"];
    normalMap = json["normalMap"];
    objectSpaceNormalMap = json["objectSpaceNormalMap"];
    tangentSpaceNormalMap = json["tangentSpaceNormalMap"];
    clearcoatMap = json["clearcoatMap"];

    clearcoatRoughnessMap = json["clearcoatRoughnessMap"];
    clearcoatNormalMap = json["clearcoatNormalMap"];
    displacementMap = json["displacementMap"];
    roughnessMap = json["roughnessMap"];
    metalnessMap = json["metalnessMap"];
    specularMap = json["specularMap"];
    alphaMap = json["alphaMap"];
    gradientMap = json["gradientMap"];
    sheen = json["sheen"];
    transmissionMap = json["transmissionMap"];
    combine = json["combine"];
    vertexTangents = json["vertexTangents"];
    vertexColors = json["vertexColors"];

    vertexUvs = json["vertexUvs"];
    uvsVertexOnly = json["uvsVertexOnly"];
    fog = json["fog"];
    useFog = json["useFog"];
    fogExp2 = json["fogExp2"];
    flatShading = json["flatShading"];

    sizeAttenuation = json["sizeAttenuation"];
    logarithmicDepthBuffer = json["logarithmicDepthBuffer"];
    skinning = json["skinning"];
    maxBones = json["maxBones"];
    useVertexTexture = json["useVertexTexture"];
    morphTargets = json["morphTargets"];

    morphNormals = json["morphNormals"];
    maxMorphTargets = json["maxMorphTargets"];
    maxMorphNormals = json["maxMorphNormals"];
    numDirLights = json["numDirLights"];
    numPointLights = json["numPointLights"];
    numSpotLights = json["numSpotLights"];

    numRectAreaLights = json["numRectAreaLights"];
    numHemiLights = json["numHemiLights"];
    numDirLightShadows = json["numDirLightShadows"];
    numPointLightShadows = json["numPointLightShadows"];
    numSpotLightShadows = json["numSpotLightShadows"];
    numClippingPlanes = json["numClippingPlanes"];

    numClipIntersection = json["numClipIntersection"];
    dithering = json["dithering"];
    shadowMapEnabled = json["shadowMapEnabled"];
    shadowMapType = json["shadowMapType"];
    toneMapping = json["toneMapping"];
    physicallyCorrectLights = json["physicallyCorrectLights"];

    premultipliedAlpha = json["premultipliedAlpha"];
    alphaTest = json["alphaTest"];
    doubleSided = json["doubleSided"];
    flipSided = json["flipSided"];
    depthPacking = json["depthPacking"];
    index0AttributeName = json["index0AttributeName"];

    extensionDerivatives = json["extensionDerivatives"];
    extensionFragDepth = json["extensionFragDepth"];
    extensionDrawBuffers = json["extensionDrawBuffers"];
    extensionShaderTextureLOD = json["extensionShaderTextureLOD"];

    rendererExtensionFragDepth = json["rendererExtensionFragDepth"];
    rendererExtensionDrawBuffers = json["rendererExtensionDrawBuffers"];
    rendererExtensionShaderTextureLod =
        json["rendererExtensionShaderTextureLod"];
    customProgramCacheKey = json["customProgramCacheKey"] ?? "";

    uniforms = json["uniforms"];
  }


  getValue(String name) {
    Map<String, dynamic> _json = this.toJSON();

    return _json[name];
  }

  toJSON() {
    Map<String, dynamic> _json = {
      "isWebGL2": isWebGL2,
      "shaderID": shaderID,
      "shaderName": shaderName,
      "vertexShader": vertexShader,
      "fragmentShader": fragmentShader,
      "defines": defines,

      "isRawShaderMaterial": isRawShaderMaterial,
      "glslVersion": glslVersion,
      "precision": precision,
      "instancing": instancing,
      "instancingColor": instancingColor,

      "supportsVertexTextures": supportsVertexTextures,
      "outputEncoding": outputEncoding,
      "map": map,
      "mapEncoding": mapEncoding,
      "matcap": matcap,

      "matcapEncoding": matcapEncoding,
      "envMap": envMap,
      "envMapMode": envMapMode,
      "envMapEncoding": envMapEncoding,
      "envMapCubeUV": envMapCubeUV,

      "lightMap": lightMap,
      "lightMapEncoding": lightMapEncoding,
      "aoMap": aoMap,
      "emissiveMap": emissiveMap,
      "emissiveMapEncoding": emissiveMapEncoding,

       "bumpMap": bumpMap,
      "normalMap": normalMap,
      "objectSpaceNormalMap": objectSpaceNormalMap,
      "tangentSpaceNormalMap": tangentSpaceNormalMap,
      "clearcoatMap": clearcoatMap,


      "clearcoatRoughnessMap": clearcoatRoughnessMap,
      "clearcoatNormalMap": clearcoatNormalMap,
      "displacementMap": displacementMap,
      "roughnessMap": roughnessMap,
      "metalnessMap": metalnessMap,

      "specularMap": specularMap,
      "alphaMap": alphaMap,
      "gradientMap": gradientMap,
      "sheen": sheen,
      "transmissionMap": transmissionMap,
      "combine": combine,

     "vertexTangents": vertexTangents,
      "vertexColors": vertexColors,
      "vertexUvs": vertexUvs,
      "uvsVertexOnly": uvsVertexOnly,
      "fog": fog,

     "useFog": useFog,
      "fogExp2": fogExp2,
      "flatShading": flatShading,
      "sizeAttenuation": sizeAttenuation,
      "logarithmicDepthBuffer": logarithmicDepthBuffer,


     "skinning": skinning,
      "maxBones": maxBones,
      "useVertexTexture": useVertexTexture,
      "morphTargets": morphTargets,
      "morphNormals": morphNormals,

     "maxMorphTargets": maxMorphTargets,
      "maxMorphNormals": maxMorphNormals,
      "numDirLights": numDirLights,
      "numPointLights": numPointLights,
      "numSpotLights": numSpotLights,

       "numRectAreaLights": numRectAreaLights,
      "numHemiLights": numHemiLights,
      "numDirLightShadows": numDirLightShadows,
      "numPointLightShadows": numPointLightShadows,
      "numSpotLightShadows": numSpotLightShadows,

      "numClippingPlanes": numClippingPlanes,
      "numClipIntersection": numClipIntersection,
      "dithering": dithering,
      "shadowMapEnabled": shadowMapEnabled,
      "shadowMapType": shadowMapType,

       "toneMapping": toneMapping,
      "physicallyCorrectLights": physicallyCorrectLights,
      "premultipliedAlpha": premultipliedAlpha,
      "alphaTest": alphaTest,
      "doubleSided": doubleSided,

       "flipSided": flipSided,
      "depthPacking": depthPacking,
      "index0AttributeName": index0AttributeName,
      "extensionDerivatives": extensionDerivatives,
      "extensionFragDepth": extensionFragDepth,

       "extensionDrawBuffers": extensionDrawBuffers,
      "extensionShaderTextureLOD": extensionShaderTextureLOD,
      "rendererExtensionFragDepth": rendererExtensionFragDepth,
      "rendererExtensionDrawBuffers": rendererExtensionDrawBuffers,
      "rendererExtensionShaderTextureLod": rendererExtensionShaderTextureLod,

       "customProgramCacheKey": customProgramCacheKey,
      "uniforms": uniforms
    };

    return _json;
  }

}