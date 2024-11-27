# Changelog

## [0.3.0](https://github.com/momentohq/client-sdk-dart/compare/v0.2.1...v0.3.0) (2024-11-27)


### Features

* support topics sequence page ([#112](https://github.com/momentohq/client-sdk-dart/issues/112)) ([7fff644](https://github.com/momentohq/client-sdk-dart/commit/7fff6441b19533e5009c6acd5ea3a7d42ce435f9))


### Bug Fixes

* update protos and add Makefile ([#111](https://github.com/momentohq/client-sdk-dart/issues/111)) ([40ddb24](https://github.com/momentohq/client-sdk-dart/commit/40ddb24df8030f7e892be736d0b10a4311719630))

## [0.2.1](https://github.com/momentohq/client-sdk-dart/compare/v0.2.0...v0.2.1) (2024-11-22)


### Bug Fixes

* copyright name ([#109](https://github.com/momentohq/client-sdk-dart/issues/109)) ([5c08363](https://github.com/momentohq/client-sdk-dart/commit/5c0836369ff7e9fa0135150de276a4ad4445294d))


### Miscellaneous

* add limit exceeded error message wrapper ([#108](https://github.com/momentohq/client-sdk-dart/issues/108)) ([1c3cd8e](https://github.com/momentohq/client-sdk-dart/commit/1c3cd8e2bbe364d3af5810c45eafcd5d54310caa))

## [0.2.0](https://github.com/momentohq/client-sdk-dart/compare/v0.1.0...v0.2.0) (2024-06-18)


### Features

* add onetime headers ([#107](https://github.com/momentohq/client-sdk-dart/issues/107)) ([9a9d4c5](https://github.com/momentohq/client-sdk-dart/commit/9a9d4c518fa8ed769eb6cafc4f710a6e0ffca11c))


### Miscellaneous

* examples should consume momento sdk from pub.dev ([#104](https://github.com/momentohq/client-sdk-dart/issues/104)) ([2e9da49](https://github.com/momentohq/client-sdk-dart/commit/2e9da49f73828fe23dbe5cf13c025ed5ce2d2998))

## [0.1.0](https://github.com/momentohq/client-sdk-dart/compare/v0.0.5...v0.1.0) (2024-01-13)


### Features

* add CacheClient close method ([#80](https://github.com/momentohq/client-sdk-dart/issues/80)) ([411d432](https://github.com/momentohq/client-sdk-dart/commit/411d432c0f6989df746cf72d35e7c095351c6307))
* add data client support for list api calls ([#64](https://github.com/momentohq/client-sdk-dart/issues/64)) ([566b3fe](https://github.com/momentohq/client-sdk-dart/commit/566b3feba37e8c6072b7fe3e60bffe6d6756e14f))


### Bug Fixes

* actually set stability to beta ([#103](https://github.com/momentohq/client-sdk-dart/issues/103)) ([88eb456](https://github.com/momentohq/client-sdk-dart/commit/88eb45614bbd19ed4e5e42c1c7a1c7092710a7a7))
* add validators to topic client and add topics tests ([#87](https://github.com/momentohq/client-sdk-dart/issues/87)) ([6fc4329](https://github.com/momentohq/client-sdk-dart/commit/6fc43299fedadfab9d0414646c4747a3b6580316))
* fix misnamed client in error message ([#100](https://github.com/momentohq/client-sdk-dart/issues/100)) ([383d624](https://github.com/momentohq/client-sdk-dart/commit/383d624de096800e9500f3d28e586d9487a6b1ec))
* readme generator should use generate-and-commit github action ([#75](https://github.com/momentohq/client-sdk-dart/issues/75)) ([492c749](https://github.com/momentohq/client-sdk-dart/commit/492c749e3d0d9708a62763238d75365a198e68fa))
* rename config classes for better autocompletes ([#82](https://github.com/momentohq/client-sdk-dart/issues/82)) ([2333c12](https://github.com/momentohq/client-sdk-dart/commit/2333c1251a06547ca2323f1cfb1aa3381a155bdd))
* return topic subscribe error immediately if subscription limit reached ([#62](https://github.com/momentohq/client-sdk-dart/issues/62)) ([30b9f49](https://github.com/momentohq/client-sdk-dart/commit/30b9f49547225a4e438846490bab7ffb1d68e3cf))
* set stability to beta ([#102](https://github.com/momentohq/client-sdk-dart/issues/102)) ([2765ee2](https://github.com/momentohq/client-sdk-dart/commit/2765ee2691cc31bf5a6b0721d7c8f5c5d9201694))
* subscription error handling should expect async stream to throw errors, not TopicSubscriptionItem to return errors ([#81](https://github.com/momentohq/client-sdk-dart/issues/81)) ([57b3b2b](https://github.com/momentohq/client-sdk-dart/commit/57b3b2b596ba45e10b11efad5f306f7693b7b18e))
* use type-specific methods in public clients, Value in internal clients ([#90](https://github.com/momentohq/client-sdk-dart/issues/90)) ([50894b7](https://github.com/momentohq/client-sdk-dart/commit/50894b75869e04b4c60c5d9c3d41befbc3a6f652))


### Miscellaneous

* add doc api examples ([#91](https://github.com/momentohq/client-sdk-dart/issues/91)) ([e0a1632](https://github.com/momentohq/client-sdk-dart/commit/e0a1632ebeca5f98ee965eb2486c4b866291ede3))
* add docstrings ([#83](https://github.com/momentohq/client-sdk-dart/issues/83)) ([2796786](https://github.com/momentohq/client-sdk-dart/commit/2796786ce513c2b9e759f7650f8d4b193f774740))
* add more descriptive error messages to control plane test ([#95](https://github.com/momentohq/client-sdk-dart/issues/95)) ([accf3e8](https://github.com/momentohq/client-sdk-dart/commit/accf3e8f74f4e1f0e4f37ca307c862b84bd9f89f))
* add readme template and readme generator ci steps ([#59](https://github.com/momentohq/client-sdk-dart/issues/59)) ([616d7be](https://github.com/momentohq/client-sdk-dart/commit/616d7beaf36d0c577f923597d07fbdea9c44a170))
* add TopicClient examples for docs ([#99](https://github.com/momentohq/client-sdk-dart/issues/99)) ([e882684](https://github.com/momentohq/client-sdk-dart/commit/e88268457b27141d6b49caa7b4b30855ad1ceb30))
* api snippet formatting ([#92](https://github.com/momentohq/client-sdk-dart/issues/92)) ([fbbd3d3](https://github.com/momentohq/client-sdk-dart/commit/fbbd3d30066c6ac1d70ab13c122605fa51b47035))
* error responses should print informative errors by default ([#88](https://github.com/momentohq/client-sdk-dart/issues/88)) ([b04ba43](https://github.com/momentohq/client-sdk-dart/commit/b04ba431428702c21479b71f1268c0f19b72ea04))
* fix yaml syntax in release-please ([#101](https://github.com/momentohq/client-sdk-dart/issues/101)) ([dadef16](https://github.com/momentohq/client-sdk-dart/commit/dadef1670f3ab6e28bba2279f436170b419946f7))
* forgot to include manifest file in release-please action ([#97](https://github.com/momentohq/client-sdk-dart/issues/97)) ([07b3c1f](https://github.com/momentohq/client-sdk-dart/commit/07b3c1f187d88eaea9820b65e8c28b726b6dcda7))
* implement toString for non-error response classes ([#89](https://github.com/momentohq/client-sdk-dart/issues/89)) ([d8ff271](https://github.com/momentohq/client-sdk-dart/commit/d8ff27116f1c2ff4fc0abdc977eca356fbbefd97))
* offer way to get cache names instead of CacheInfos from ListCachesResponse ([#79](https://github.com/momentohq/client-sdk-dart/issues/79)) ([6de1b98](https://github.com/momentohq/client-sdk-dart/commit/6de1b985128d979614adbc06131a64c8364e116b))
* provide informational error message when api key env var is not set ([#84](https://github.com/momentohq/client-sdk-dart/issues/84)) ([8511f11](https://github.com/momentohq/client-sdk-dart/commit/8511f11ebffe0a3a41972d407053ca8caa48e3db))
* readme template was missing code block markdown for usage section ([#86](https://github.com/momentohq/client-sdk-dart/issues/86)) ([8f41212](https://github.com/momentohq/client-sdk-dart/commit/8f412126ccd8af52241701cdfa45a6c92d97f138))
* send package version as agent header once per new client ([#93](https://github.com/momentohq/client-sdk-dart/issues/93)) ([8a77c16](https://github.com/momentohq/client-sdk-dart/commit/8a77c169a6e22c22b49f39927d1bc03981da232e))
* try specifying github workflow extra files option instead of manifest file ([#98](https://github.com/momentohq/client-sdk-dart/issues/98)) ([02ce582](https://github.com/momentohq/client-sdk-dart/commit/02ce5825198e7f2ae80a48d4094d5b128eb9a977))

## [0.0.5](https://github.com/momentohq/client-sdk-dart/compare/v0.0.4...v0.0.5) (2024-01-03)


### Bug Fixes

* allow heirarchal loggers to have their own log levels ([#56](https://github.com/momentohq/client-sdk-dart/issues/56)) ([19082cb](https://github.com/momentohq/client-sdk-dart/commit/19082cbced2b480c1ddb264df0741baf2c631072))

## [0.0.4](https://github.com/momentohq/client-sdk-dart/compare/v0.0.3...v0.0.4) (2024-01-03)


### Miscellaneous

* release please action only creates/manages pr ([#53](https://github.com/momentohq/client-sdk-dart/issues/53)) ([0cfdfc1](https://github.com/momentohq/client-sdk-dart/commit/0cfdfc121079421cb8f546897d2362edfc833533))

## [0.0.3](https://github.com/momentohq/client-sdk-dart/compare/v0.0.2...v0.0.3) (2024-01-03)


### Miscellaneous

* release 0.0.3 ([eae5b12](https://github.com/momentohq/client-sdk-dart/commit/eae5b12794d156ff793d7dec2caf9f9859115da8))

## 0.0.2 (2024-01-03)


### Features

* add configuration objects for TopicClient ([598ef12](https://github.com/momentohq/client-sdk-dart/commit/598ef1253aacc96f1db6d596e86f718b17b5b179))
* add unary data client with get/set support ([#35](https://github.com/momentohq/client-sdk-dart/issues/35)) ([a632ba9](https://github.com/momentohq/client-sdk-dart/commit/a632ba95ed6ea3e1019185a46f10a502433a6d51))
* cache client control plane operations ([#44](https://github.com/momentohq/client-sdk-dart/issues/44)) ([a71ed4d](https://github.com/momentohq/client-sdk-dart/commit/a71ed4d059c4f5d63c701a5985ed1115241ab728))
* scalar delete ([#43](https://github.com/momentohq/client-sdk-dart/issues/43)) ([2937864](https://github.com/momentohq/client-sdk-dart/commit/2937864c5f357640d9dc371bfdccc695a6bcc91f))
* support overriding endpoints for credentials provider ([cb7619b](https://github.com/momentohq/client-sdk-dart/commit/cb7619bcbb3ddea2d88cfc53f9b120e4b1b2b2bc))
* support overriding endpoints for credentials provider ([c9a0756](https://github.com/momentohq/client-sdk-dart/commit/c9a075648d4cf31a4e62d7ed63e52e6f8c39e6a5))
* topic subscribe ([fa2b3be](https://github.com/momentohq/client-sdk-dart/commit/fa2b3bef8192788896fbacbe5f44c2ad13774260))


### Bug Fixes

* release please job syntax ([#49](https://github.com/momentohq/client-sdk-dart/issues/49)) ([7900423](https://github.com/momentohq/client-sdk-dart/commit/790042304679b1deb218220b208188f5289fc73d))
* topics subscription resiliency ([#38](https://github.com/momentohq/client-sdk-dart/issues/38)) ([c88060c](https://github.com/momentohq/client-sdk-dart/commit/c88060cfa2d85c8df40cf3cb307b012c9099d6c3))


### Miscellaneous

* add basic topics example and readmes ([#45](https://github.com/momentohq/client-sdk-dart/issues/45)) ([e719284](https://github.com/momentohq/client-sdk-dart/commit/e7192846fca5d570c30aac6d2775bf56e28c0ea3))
* add cache configurations objects ([#32](https://github.com/momentohq/client-sdk-dart/issues/32)) ([b79d671](https://github.com/momentohq/client-sdk-dart/commit/b79d671f7e761ed74e6aae231632d2afa810e525))
* add log level to prebuilt configurations ([#33](https://github.com/momentohq/client-sdk-dart/issues/33)) ([7d7275d](https://github.com/momentohq/client-sdk-dart/commit/7d7275dbbd279c24a324ff87a902c45d1c3b82b0))
* add placeholder test so test command passes ([cad0d91](https://github.com/momentohq/client-sdk-dart/commit/cad0d912dab3f194d1a279bf71cc96fbdc5602ec))
* add unit test for cred provider ([9fbb954](https://github.com/momentohq/client-sdk-dart/commit/9fbb954ba2caf344e895f07183648520210b6d65))
* added full error set and ran linter ([0198c3c](https://github.com/momentohq/client-sdk-dart/commit/0198c3cb7c36b95010cd40e6bf19595764db2496))
* comment out example ([459d8aa](https://github.com/momentohq/client-sdk-dart/commit/459d8aae5eb65f0cc54b183cda1c7ceee6919e68))
* Create release-please.yml ([#47](https://github.com/momentohq/client-sdk-dart/issues/47)) ([82310d4](https://github.com/momentohq/client-sdk-dart/commit/82310d4c4c783d20ec151909d15ce91560c0641b))
* dart format ([c82bf87](https://github.com/momentohq/client-sdk-dart/commit/c82bf879d29844db8b0f9c676fc6eb70f416fce9))
* dart format ([7bd215f](https://github.com/momentohq/client-sdk-dart/commit/7bd215f8177cf899a12a9301eb3eeb93884653eb))
* dart format ([c278aa1](https://github.com/momentohq/client-sdk-dart/commit/c278aa1471912aeae25755254b6b660db8310d0a))
* demo flutter chat app ([#34](https://github.com/momentohq/client-sdk-dart/issues/34)) ([6088ed8](https://github.com/momentohq/client-sdk-dart/commit/6088ed8cadd67b8c6e779d73e03cbe6dc0b26d90))
* fix all analysis errors ([df7a77b](https://github.com/momentohq/client-sdk-dart/commit/df7a77befa5b8278f4471a9a47ac50a36d0989bb))
* fix formatting command in readme ([b81d74d](https://github.com/momentohq/client-sdk-dart/commit/b81d74d2e6381e9a037d966c14ac1a4d05c78c88))
* format ([9d47209](https://github.com/momentohq/client-sdk-dart/commit/9d4720924405b8f1972f3d6e550d4d6f644f3239))
* initial commit ([27ccd27](https://github.com/momentohq/client-sdk-dart/commit/27ccd27b209439591f49b0cad670ca47e7882252))
* merge main ([f197f53](https://github.com/momentohq/client-sdk-dart/commit/f197f5333369e8971886e6940faf96a0ed3acf9e))
* merge working tests ([a9a8499](https://github.com/momentohq/client-sdk-dart/commit/a9a849900983736b5e5cbc7e8e6772b7d9b16636))
* pass client timeout to publish as call option ([7b0f0d9](https://github.com/momentohq/client-sdk-dart/commit/7b0f0d9dd6927d45f2b8e1e4e0f745bc577dda03))
* plumb through publish command ([7bb7a91](https://github.com/momentohq/client-sdk-dart/commit/7bb7a91b211c4b046f1ca1629a317c35ba9a1b7a))
* plumb through publish command ([5523ce1](https://github.com/momentohq/client-sdk-dart/commit/5523ce1b8ec7e05926f3847d92bd94e3ad52a10f))
* release 0.0.2 ([ebf6fde](https://github.com/momentohq/client-sdk-dart/commit/ebf6fde52ed73168d4f72c3f5f7f290839f19f6e))
* remove server side generated protos ([45116ff](https://github.com/momentohq/client-sdk-dart/commit/45116ff224aefd8020b8a46de0ae3f57e8b6f7a4))
* remove TODOs from readme ([#51](https://github.com/momentohq/client-sdk-dart/issues/51)) ([e457064](https://github.com/momentohq/client-sdk-dart/commit/e457064232a0db8353576848b2de22d39a0b3401))
* rename package from client_sdk_dart to momento ([#48](https://github.com/momentohq/client-sdk-dart/issues/48)) ([219c50f](https://github.com/momentohq/client-sdk-dart/commit/219c50f4bd49d80f3efdc56e3ad9724e73a9f158))
* run format inside of ci ([fd0f602](https://github.com/momentohq/client-sdk-dart/commit/fd0f60262a2a10d464709d4e047bd1b5bc214745))
* setup ci ([b925c1d](https://github.com/momentohq/client-sdk-dart/commit/b925c1df8aac46284932d8ccad458f97e6e6445a))
* setup ci ([a55bfd2](https://github.com/momentohq/client-sdk-dart/commit/a55bfd2fe0e956e4a0c8481e36e1fecf73b1e0b8))
* update keepalive settings for topic client ([#46](https://github.com/momentohq/client-sdk-dart/issues/46)) ([50e54a9](https://github.com/momentohq/client-sdk-dart/commit/50e54a9054c8358fc867cabf768c25fd05c8ca08))

## 1.0.0

- Initial version.
