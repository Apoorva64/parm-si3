	.text
	.syntax unified
	.eabi_attribute	67, "2.09"
	.cpu	cortex-m0
	.eabi_attribute	6, 12
	.eabi_attribute	7, 77
	.eabi_attribute	8, 0
	.eabi_attribute	9, 1
	.eabi_attribute	34, 0
	.eabi_attribute	17, 1
	.eabi_attribute	20, 1
	.eabi_attribute	21, 0
	.eabi_attribute	23, 3
	.eabi_attribute	24, 1
	.eabi_attribute	25, 1
	.eabi_attribute	38, 1
	.eabi_attribute	18, 4
	.eabi_attribute	26, 2
	.eabi_attribute	14, 0
	.file	"ox.c"
	.globl	run
	.p2align	1
	.type	run,%function
	.code	16
	.thumb_func
run:
	.fnstart
	.save	{r7, lr}
	push	{r7, lr}
	.setfp	r7, sp
	add	r7, sp, #0
	.pad	#180
	sub	sp, #180
	@APP
	sub	sp, #508
	@NO_APP
	@APP
	sub	sp, #452
	@NO_APP
	movs	r0, #32
	str	r0, [sp, #16]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r0, [sp, #84]
	str	r0, [sp, #80]
	str	r0, [sp, #76]
	str	r0, [sp, #72]
	str	r0, [sp, #68]
	str	r0, [sp, #64]
	str	r0, [sp, #60]
	movs	r0, #88
	str	r0, [sp, #56]
	movs	r0, #0
	str	r0, [sp, #52]
	str	r0, [sp, #48]
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	movs	r0, #87
	str	r0, [sp, #116]
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_30
.LBB0_30:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_31
.LBB0_31:
	b	.LBB0_32
.LBB0_32:
	b	.LBB0_33
.LBB0_33:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_34
.LBB0_34:
	b	.LBB0_35
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	movs	r0, #77
	str	r0, [sp, #116]
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_41
.LBB0_41:
	b	.LBB0_42
.LBB0_42:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_44
.LBB0_44:
	b	.LBB0_45
.LBB0_45:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_49
.LBB0_49:
	b	.LBB0_50
.LBB0_50:
	b	.LBB0_51
.LBB0_51:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_52
.LBB0_52:
	b	.LBB0_53
.LBB0_53:
	b	.LBB0_54
.LBB0_54:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_55
.LBB0_55:
	b	.LBB0_56
.LBB0_56:
	b	.LBB0_57
.LBB0_57:
	movs	r0, #72
	str	r0, [sp, #116]
	b	.LBB0_58
.LBB0_58:
	b	.LBB0_59
.LBB0_59:
	b	.LBB0_60
.LBB0_60:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_61
.LBB0_61:
	b	.LBB0_62
.LBB0_62:
	b	.LBB0_63
.LBB0_63:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_64
.LBB0_64:
	b	.LBB0_65
.LBB0_65:
	b	.LBB0_66
.LBB0_66:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_67
.LBB0_67:
	b	.LBB0_68
.LBB0_68:
	b	.LBB0_69
.LBB0_69:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_70
.LBB0_70:
	b	.LBB0_71
.LBB0_71:
	b	.LBB0_72
.LBB0_72:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_73
.LBB0_73:
	b	.LBB0_74
.LBB0_74:
	b	.LBB0_75
.LBB0_75:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_76
.LBB0_76:
	b	.LBB0_77
.LBB0_77:
	b	.LBB0_78
.LBB0_78:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_79
.LBB0_79:
	b	.LBB0_80
.LBB0_80:
	b	.LBB0_81
.LBB0_81:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_82
.LBB0_82:
	b	.LBB0_83
.LBB0_83:
	b	.LBB0_84
.LBB0_84:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_85
.LBB0_85:
	b	.LBB0_86
.LBB0_86:
	b	.LBB0_87
.LBB0_87:
	b	.LBB0_88
.LBB0_88:
	b	.LBB0_89
.LBB0_89:
	b	.LBB0_90
.LBB0_90:
	b	.LBB0_91
.LBB0_91:
	b	.LBB0_92
.LBB0_92:
	b	.LBB0_93
.LBB0_93:
	b	.LBB0_94
.LBB0_94:
	b	.LBB0_95
.LBB0_95:
	b	.LBB0_96
.LBB0_96:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_97
.LBB0_97:
	b	.LBB0_98
.LBB0_98:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_99
.LBB0_99:
	b	.LBB0_100
.LBB0_100:
	b	.LBB0_101
.LBB0_101:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_102
.LBB0_102:
	b	.LBB0_103
.LBB0_103:
	b	.LBB0_104
.LBB0_104:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_105
.LBB0_105:
	b	.LBB0_106
.LBB0_106:
	b	.LBB0_107
.LBB0_107:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_108
.LBB0_108:
	b	.LBB0_109
.LBB0_109:
	b	.LBB0_110
.LBB0_110:
	movs	r0, #71
	str	r0, [sp, #116]
	b	.LBB0_111
.LBB0_111:
	b	.LBB0_112
.LBB0_112:
	b	.LBB0_113
.LBB0_113:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_114
.LBB0_114:
	b	.LBB0_115
.LBB0_115:
	b	.LBB0_116
.LBB0_116:
	movs	r0, #77
	str	r0, [sp, #116]
	b	.LBB0_117
.LBB0_117:
	b	.LBB0_118
.LBB0_118:
	b	.LBB0_119
.LBB0_119:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_120
.LBB0_120:
	b	.LBB0_121
.LBB0_121:
	b	.LBB0_122
.LBB0_122:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_123
.LBB0_123:
	b	.LBB0_124
.LBB0_124:
	b	.LBB0_125
.LBB0_125:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_126
.LBB0_126:
	b	.LBB0_127
.LBB0_127:
	b	.LBB0_128
.LBB0_128:
	b	.LBB0_129
.LBB0_129:
	b	.LBB0_130
.LBB0_130:
	b	.LBB0_131
.LBB0_131:
	b	.LBB0_132
.LBB0_132:
	b	.LBB0_133
.LBB0_133:
	b	.LBB0_134
.LBB0_134:
	b	.LBB0_135
.LBB0_135:
	b	.LBB0_136
.LBB0_136:
	b	.LBB0_137
.LBB0_137:
	b	.LBB0_138
.LBB0_138:
	b	.LBB0_139
.LBB0_139:
	b	.LBB0_140
.LBB0_140:
	b	.LBB0_141
.LBB0_141:
	b	.LBB0_142
.LBB0_142:
	b	.LBB0_143
.LBB0_143:
	b	.LBB0_144
.LBB0_144:
	b	.LBB0_145
.LBB0_145:
	b	.LBB0_146
.LBB0_146:
	b	.LBB0_147
.LBB0_147:
	b	.LBB0_148
.LBB0_148:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_149
.LBB0_149:
	b	.LBB0_150
.LBB0_150:
	movs	r0, #72
	str	r0, [sp, #116]
	b	.LBB0_151
.LBB0_151:
	b	.LBB0_152
.LBB0_152:
	b	.LBB0_153
.LBB0_153:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_154
.LBB0_154:
	b	.LBB0_155
.LBB0_155:
	b	.LBB0_156
.LBB0_156:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_157
.LBB0_157:
	b	.LBB0_158
.LBB0_158:
	b	.LBB0_159
.LBB0_159:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_160
.LBB0_160:
	b	.LBB0_161
.LBB0_161:
	b	.LBB0_162
.LBB0_162:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_163
.LBB0_163:
	b	.LBB0_164
.LBB0_164:
	b	.LBB0_165
.LBB0_165:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_166
.LBB0_166:
	b	.LBB0_167
.LBB0_167:
	b	.LBB0_168
.LBB0_168:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_169
.LBB0_169:
	b	.LBB0_170
.LBB0_170:
	b	.LBB0_171
.LBB0_171:
	movs	r0, #68
	str	r0, [sp, #116]
	b	.LBB0_172
.LBB0_172:
	b	.LBB0_173
.LBB0_173:
	b	.LBB0_174
.LBB0_174:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_175
.LBB0_175:
	b	.LBB0_176
.LBB0_176:
	b	.LBB0_177
.LBB0_177:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_178
.LBB0_178:
	b	.LBB0_179
.LBB0_179:
	b	.LBB0_180
.LBB0_180:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_181
.LBB0_181:
	b	.LBB0_182
.LBB0_182:
	b	.LBB0_183
.LBB0_183:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_184
.LBB0_184:
	b	.LBB0_185
.LBB0_185:
	b	.LBB0_186
.LBB0_186:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_187
.LBB0_187:
	b	.LBB0_188
.LBB0_188:
	b	.LBB0_189
.LBB0_189:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_190
.LBB0_190:
	b	.LBB0_191
.LBB0_191:
	b	.LBB0_192
.LBB0_192:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_193
.LBB0_193:
	b	.LBB0_194
.LBB0_194:
	b	.LBB0_195
.LBB0_195:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_196
.LBB0_196:
	b	.LBB0_197
.LBB0_197:
	b	.LBB0_198
.LBB0_198:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_199
.LBB0_199:
	b	.LBB0_200
.LBB0_200:
	b	.LBB0_201
.LBB0_201:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_202
.LBB0_202:
	b	.LBB0_203
.LBB0_203:
	b	.LBB0_204
.LBB0_204:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_205
.LBB0_205:
	b	.LBB0_206
.LBB0_206:
	b	.LBB0_207
.LBB0_207:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_208
.LBB0_208:
	b	.LBB0_209
.LBB0_209:
	b	.LBB0_210
.LBB0_210:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_211
.LBB0_211:
	b	.LBB0_212
.LBB0_212:
	b	.LBB0_213
.LBB0_213:
	b	.LBB0_214
.LBB0_214:
	b	.LBB0_215
.LBB0_215:
	b	.LBB0_216
.LBB0_216:
	b	.LBB0_217
.LBB0_217:
	b	.LBB0_218
.LBB0_218:
	b	.LBB0_219
.LBB0_219:
	b	.LBB0_220
.LBB0_220:
	b	.LBB0_221
.LBB0_221:
	b	.LBB0_222
.LBB0_222:
	b	.LBB0_223
.LBB0_223:
	b	.LBB0_224
.LBB0_224:
	b	.LBB0_225
.LBB0_225:
	b	.LBB0_226
.LBB0_226:
	b	.LBB0_227
.LBB0_227:
	b	.LBB0_228
.LBB0_228:
	b	.LBB0_229
.LBB0_229:
	b	.LBB0_230
.LBB0_230:
	b	.LBB0_231
.LBB0_231:
	b	.LBB0_232
.LBB0_232:
	b	.LBB0_233
.LBB0_233:
	b	.LBB0_234
.LBB0_234:
	b	.LBB0_235
.LBB0_235:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_236
.LBB0_236:
	b	.LBB0_237
.LBB0_237:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_238
.LBB0_238:
	b	.LBB0_239
.LBB0_239:
	b	.LBB0_240
.LBB0_240:
	movs	r0, #72
	str	r0, [sp, #116]
	b	.LBB0_241
.LBB0_241:
	b	.LBB0_242
.LBB0_242:
	b	.LBB0_243
.LBB0_243:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_244
.LBB0_244:
	b	.LBB0_245
.LBB0_245:
	b	.LBB0_246
.LBB0_246:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_247
.LBB0_247:
	b	.LBB0_248
.LBB0_248:
	b	.LBB0_249
.LBB0_249:
	movs	r0, #70
	str	r0, [sp, #116]
	b	.LBB0_250
.LBB0_250:
	b	.LBB0_251
.LBB0_251:
	b	.LBB0_252
.LBB0_252:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_253
.LBB0_253:
	b	.LBB0_254
.LBB0_254:
	b	.LBB0_255
.LBB0_255:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_256
.LBB0_256:
	b	.LBB0_257
.LBB0_257:
	b	.LBB0_258
.LBB0_258:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_259
.LBB0_259:
	b	.LBB0_260
.LBB0_260:
	b	.LBB0_261
.LBB0_261:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_262
.LBB0_262:
	b	.LBB0_263
.LBB0_263:
	b	.LBB0_264
.LBB0_264:
	movs	r0, #87
	str	r0, [sp, #116]
	b	.LBB0_265
.LBB0_265:
	b	.LBB0_266
.LBB0_266:
	b	.LBB0_267
.LBB0_267:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_268
.LBB0_268:
	b	.LBB0_269
.LBB0_269:
	b	.LBB0_270
.LBB0_270:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_271
.LBB0_271:
	b	.LBB0_272
.LBB0_272:
	b	.LBB0_273
.LBB0_273:
	movs	r0, #71
	str	r0, [sp, #116]
	b	.LBB0_274
.LBB0_274:
	b	.LBB0_275
.LBB0_275:
	b	.LBB0_276
.LBB0_276:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_277
.LBB0_277:
	b	.LBB0_278
.LBB0_278:
	b	.LBB0_279
.LBB0_279:
	movs	r0, #70
	str	r0, [sp, #116]
	b	.LBB0_280
.LBB0_280:
	b	.LBB0_281
.LBB0_281:
	b	.LBB0_282
.LBB0_282:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_283
.LBB0_283:
	b	.LBB0_284
.LBB0_284:
	b	.LBB0_285
.LBB0_285:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_286
.LBB0_286:
	b	.LBB0_287
.LBB0_287:
	b	.LBB0_288
.LBB0_288:
	movs	r0, #77
	str	r0, [sp, #116]
	b	.LBB0_289
.LBB0_289:
	b	.LBB0_290
.LBB0_290:
	b	.LBB0_291
.LBB0_291:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_292
.LBB0_292:
	b	.LBB0_293
.LBB0_293:
	b	.LBB0_294
.LBB0_294:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_295
.LBB0_295:
	b	.LBB0_296
.LBB0_296:
	b	.LBB0_297
.LBB0_297:
	movs	r0, #58
	str	r0, [sp, #116]
	b	.LBB0_298
.LBB0_298:
	b	.LBB0_299
.LBB0_299:
	b	.LBB0_300
.LBB0_300:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_301
.LBB0_301:
	b	.LBB0_302
.LBB0_302:
	b	.LBB0_303
.LBB0_303:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_304
.LBB0_304:
	b	.LBB0_305
.LBB0_305:
	b	.LBB0_306
.LBB0_306:
	b	.LBB0_307
.LBB0_307:
	b	.LBB0_308
.LBB0_308:
	b	.LBB0_309
.LBB0_309:
	b	.LBB0_310
.LBB0_310:
	b	.LBB0_311
.LBB0_311:
	b	.LBB0_312
.LBB0_312:
	b	.LBB0_313
.LBB0_313:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_314
.LBB0_314:
	b	.LBB0_315
.LBB0_315:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_316
.LBB0_316:
	b	.LBB0_317
.LBB0_317:
	b	.LBB0_318
.LBB0_318:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_319
.LBB0_319:
	b	.LBB0_320
.LBB0_320:
	b	.LBB0_321
.LBB0_321:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_322
.LBB0_322:
	b	.LBB0_323
.LBB0_323:
	b	.LBB0_324
.LBB0_324:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_325
.LBB0_325:
	b	.LBB0_326
.LBB0_326:
	b	.LBB0_327
.LBB0_327:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_328
.LBB0_328:
	b	.LBB0_329
.LBB0_329:
	b	.LBB0_330
.LBB0_330:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_331
.LBB0_331:
	b	.LBB0_332
.LBB0_332:
	b	.LBB0_333
.LBB0_333:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_334
.LBB0_334:
	b	.LBB0_335
.LBB0_335:
	b	.LBB0_336
.LBB0_336:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_337
.LBB0_337:
	b	.LBB0_338
.LBB0_338:
	b	.LBB0_339
.LBB0_339:
	b	.LBB0_340
.LBB0_340:
	b	.LBB0_341
.LBB0_341:
	b	.LBB0_342
.LBB0_342:
	b	.LBB0_343
.LBB0_343:
	b	.LBB0_344
.LBB0_344:
	b	.LBB0_345
.LBB0_345:
	b	.LBB0_346
.LBB0_346:
	b	.LBB0_347
.LBB0_347:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_348
.LBB0_348:
	b	.LBB0_349
.LBB0_349:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_350
.LBB0_350:
	b	.LBB0_351
.LBB0_351:
	b	.LBB0_352
.LBB0_352:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_353
.LBB0_353:
	b	.LBB0_354
.LBB0_354:
	b	.LBB0_355
.LBB0_355:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_356
.LBB0_356:
	b	.LBB0_357
.LBB0_357:
	b	.LBB0_358
.LBB0_358:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_359
.LBB0_359:
	b	.LBB0_360
.LBB0_360:
	b	.LBB0_361
.LBB0_361:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_362
.LBB0_362:
	b	.LBB0_363
.LBB0_363:
	b	.LBB0_364
.LBB0_364:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_365
.LBB0_365:
	b	.LBB0_366
.LBB0_366:
	b	.LBB0_367
.LBB0_367:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_368
.LBB0_368:
	b	.LBB0_369
.LBB0_369:
	b	.LBB0_370
.LBB0_370:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_371
.LBB0_371:
	b	.LBB0_372
.LBB0_372:
	b	.LBB0_373
.LBB0_373:
	b	.LBB0_374
.LBB0_374:
	b	.LBB0_375
.LBB0_375:
	b	.LBB0_376
.LBB0_376:
	b	.LBB0_377
.LBB0_377:
	b	.LBB0_378
.LBB0_378:
	b	.LBB0_379
.LBB0_379:
	b	.LBB0_380
.LBB0_380:
	b	.LBB0_381
.LBB0_381:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_382
.LBB0_382:
	b	.LBB0_383
.LBB0_383:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_384
.LBB0_384:
	b	.LBB0_385
.LBB0_385:
	b	.LBB0_386
.LBB0_386:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_387
.LBB0_387:
	b	.LBB0_388
.LBB0_388:
	b	.LBB0_389
.LBB0_389:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_390
.LBB0_390:
	b	.LBB0_391
.LBB0_391:
	b	.LBB0_392
.LBB0_392:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_393
.LBB0_393:
	b	.LBB0_394
.LBB0_394:
	b	.LBB0_395
.LBB0_395:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_396
.LBB0_396:
	b	.LBB0_397
.LBB0_397:
	b	.LBB0_398
.LBB0_398:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_399
.LBB0_399:
	b	.LBB0_400
.LBB0_400:
	b	.LBB0_401
.LBB0_401:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_402
.LBB0_402:
	b	.LBB0_403
.LBB0_403:
	b	.LBB0_404
.LBB0_404:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_405
.LBB0_405:
	b	.LBB0_406
.LBB0_406:
	b	.LBB0_407
.LBB0_407:
	b	.LBB0_408
.LBB0_408:
	b	.LBB0_409
.LBB0_409:
	b	.LBB0_410
.LBB0_410:
	b	.LBB0_411
.LBB0_411:
	b	.LBB0_412
.LBB0_412:
	b	.LBB0_413
.LBB0_413:
	b	.LBB0_414
.LBB0_414:
	b	.LBB0_415
.LBB0_415:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_416
.LBB0_416:
	b	.LBB0_417
.LBB0_417:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_418
.LBB0_418:
	b	.LBB0_419
.LBB0_419:
	b	.LBB0_420
.LBB0_420:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_421
.LBB0_421:
	b	.LBB0_422
.LBB0_422:
	b	.LBB0_423
.LBB0_423:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_424
.LBB0_424:
	b	.LBB0_425
.LBB0_425:
	b	.LBB0_426
.LBB0_426:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_427
.LBB0_427:
	b	.LBB0_428
.LBB0_428:
	b	.LBB0_429
.LBB0_429:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_430
.LBB0_430:
	b	.LBB0_431
.LBB0_431:
	b	.LBB0_432
.LBB0_432:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_433
.LBB0_433:
	b	.LBB0_434
.LBB0_434:
	b	.LBB0_435
.LBB0_435:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_436
.LBB0_436:
	b	.LBB0_437
.LBB0_437:
	b	.LBB0_438
.LBB0_438:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_439
.LBB0_439:
	b	.LBB0_440
.LBB0_440:
	b	.LBB0_441
.LBB0_441:
	b	.LBB0_442
.LBB0_442:
	b	.LBB0_443
.LBB0_443:
	b	.LBB0_444
.LBB0_444:
	b	.LBB0_445
.LBB0_445:
	b	.LBB0_446
.LBB0_446:
	b	.LBB0_447
.LBB0_447:
	b	.LBB0_448
.LBB0_448:
	b	.LBB0_449
.LBB0_449:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_450
.LBB0_450:
	b	.LBB0_451
.LBB0_451:
	movs	r0, #49
	str	r0, [sp, #116]
	b	.LBB0_452
.LBB0_452:
	b	.LBB0_453
.LBB0_453:
	b	.LBB0_454
.LBB0_454:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_455
.LBB0_455:
	b	.LBB0_456
.LBB0_456:
	b	.LBB0_457
.LBB0_457:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_458
.LBB0_458:
	b	.LBB0_459
.LBB0_459:
	b	.LBB0_460
.LBB0_460:
	movs	r0, #50
	str	r0, [sp, #116]
	b	.LBB0_461
.LBB0_461:
	b	.LBB0_462
.LBB0_462:
	b	.LBB0_463
.LBB0_463:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_464
.LBB0_464:
	b	.LBB0_465
.LBB0_465:
	b	.LBB0_466
.LBB0_466:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_467
.LBB0_467:
	b	.LBB0_468
.LBB0_468:
	b	.LBB0_469
.LBB0_469:
	movs	r0, #51
	str	r0, [sp, #116]
	b	.LBB0_470
.LBB0_470:
	b	.LBB0_471
.LBB0_471:
	b	.LBB0_472
.LBB0_472:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_473
.LBB0_473:
	b	.LBB0_474
.LBB0_474:
	b	.LBB0_475
.LBB0_475:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_476
.LBB0_476:
	b	.LBB0_477
.LBB0_477:
	b	.LBB0_478
.LBB0_478:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_479
.LBB0_479:
	b	.LBB0_480
.LBB0_480:
	b	.LBB0_481
.LBB0_481:
	b	.LBB0_482
.LBB0_482:
	b	.LBB0_483
.LBB0_483:
	b	.LBB0_484
.LBB0_484:
	b	.LBB0_485
.LBB0_485:
	ldr	r0, [sp, #92]
	str	r0, [sp, #116]
	b	.LBB0_486
.LBB0_486:
	b	.LBB0_487
.LBB0_487:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_488
.LBB0_488:
	b	.LBB0_489
.LBB0_489:
	b	.LBB0_490
.LBB0_490:
	ldr	r0, [sp, #88]
	str	r0, [sp, #116]
	b	.LBB0_491
.LBB0_491:
	b	.LBB0_492
.LBB0_492:
	b	.LBB0_493
.LBB0_493:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_494
.LBB0_494:
	b	.LBB0_495
.LBB0_495:
	b	.LBB0_496
.LBB0_496:
	ldr	r0, [sp, #84]
	str	r0, [sp, #116]
	b	.LBB0_497
.LBB0_497:
	b	.LBB0_498
.LBB0_498:
	b	.LBB0_499
.LBB0_499:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_500
.LBB0_500:
	b	.LBB0_501
.LBB0_501:
	b	.LBB0_502
.LBB0_502:
	b	.LBB0_503
.LBB0_503:
	b	.LBB0_504
.LBB0_504:
	b	.LBB0_505
.LBB0_505:
	b	.LBB0_506
.LBB0_506:
	b	.LBB0_507
.LBB0_507:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_508
.LBB0_508:
	b	.LBB0_509
.LBB0_509:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_510
.LBB0_510:
	b	.LBB0_511
.LBB0_511:
	b	.LBB0_512
.LBB0_512:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_513
.LBB0_513:
	b	.LBB0_514
.LBB0_514:
	b	.LBB0_515
.LBB0_515:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_516
.LBB0_516:
	b	.LBB0_517
.LBB0_517:
	b	.LBB0_518
.LBB0_518:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_519
.LBB0_519:
	b	.LBB0_520
.LBB0_520:
	b	.LBB0_521
.LBB0_521:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_522
.LBB0_522:
	b	.LBB0_523
.LBB0_523:
	b	.LBB0_524
.LBB0_524:
	b	.LBB0_525
.LBB0_525:
	b	.LBB0_526
.LBB0_526:
	b	.LBB0_527
.LBB0_527:
	b	.LBB0_528
.LBB0_528:
	b	.LBB0_529
.LBB0_529:
	ldr	r0, [sp, #80]
	str	r0, [sp, #116]
	b	.LBB0_530
.LBB0_530:
	b	.LBB0_531
.LBB0_531:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_532
.LBB0_532:
	b	.LBB0_533
.LBB0_533:
	b	.LBB0_534
.LBB0_534:
	ldr	r0, [sp, #76]
	str	r0, [sp, #116]
	b	.LBB0_535
.LBB0_535:
	b	.LBB0_536
.LBB0_536:
	b	.LBB0_537
.LBB0_537:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_538
.LBB0_538:
	b	.LBB0_539
.LBB0_539:
	b	.LBB0_540
.LBB0_540:
	ldr	r0, [sp, #72]
	str	r0, [sp, #116]
	b	.LBB0_541
.LBB0_541:
	b	.LBB0_542
.LBB0_542:
	b	.LBB0_543
.LBB0_543:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_544
.LBB0_544:
	b	.LBB0_545
.LBB0_545:
	b	.LBB0_546
.LBB0_546:
	b	.LBB0_547
.LBB0_547:
	b	.LBB0_548
.LBB0_548:
	b	.LBB0_549
.LBB0_549:
	b	.LBB0_550
.LBB0_550:
	b	.LBB0_551
.LBB0_551:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_552
.LBB0_552:
	b	.LBB0_553
.LBB0_553:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_554
.LBB0_554:
	b	.LBB0_555
.LBB0_555:
	b	.LBB0_556
.LBB0_556:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_557
.LBB0_557:
	b	.LBB0_558
.LBB0_558:
	b	.LBB0_559
.LBB0_559:
	movs	r0, #43
	str	r0, [sp, #116]
	b	.LBB0_560
.LBB0_560:
	b	.LBB0_561
.LBB0_561:
	b	.LBB0_562
.LBB0_562:
	movs	r0, #45
	str	r0, [sp, #116]
	b	.LBB0_563
.LBB0_563:
	b	.LBB0_564
.LBB0_564:
	b	.LBB0_565
.LBB0_565:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_566
.LBB0_566:
	b	.LBB0_567
.LBB0_567:
	b	.LBB0_568
.LBB0_568:
	b	.LBB0_569
.LBB0_569:
	b	.LBB0_570
.LBB0_570:
	b	.LBB0_571
.LBB0_571:
	b	.LBB0_572
.LBB0_572:
	b	.LBB0_573
.LBB0_573:
	ldr	r0, [sp, #68]
	str	r0, [sp, #116]
	b	.LBB0_574
.LBB0_574:
	b	.LBB0_575
.LBB0_575:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_576
.LBB0_576:
	b	.LBB0_577
.LBB0_577:
	b	.LBB0_578
.LBB0_578:
	ldr	r0, [sp, #64]
	str	r0, [sp, #116]
	b	.LBB0_579
.LBB0_579:
	b	.LBB0_580
.LBB0_580:
	b	.LBB0_581
.LBB0_581:
	movs	r0, #124
	str	r0, [sp, #116]
	b	.LBB0_582
.LBB0_582:
	b	.LBB0_583
.LBB0_583:
	b	.LBB0_584
.LBB0_584:
	ldr	r0, [sp, #60]
	str	r0, [sp, #116]
	b	.LBB0_585
.LBB0_585:
	b	.LBB0_586
.LBB0_586:
	b	.LBB0_587
.LBB0_587:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_588
.LBB0_588:
	b	.LBB0_589
.LBB0_589:
	b	.LBB0_590
.LBB0_590:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_591
.LBB0_591:
	ldr	r0, [sp, #92]
	cmp	r0, #88
	bne	.LBB0_594
	b	.LBB0_592
.LBB0_592:
	ldr	r0, [sp, #88]
	cmp	r0, #88
	bne	.LBB0_594
	b	.LBB0_593
.LBB0_593:
	ldr	r0, [sp, #84]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_594
.LBB0_594:
	ldr	r0, [sp, #80]
	cmp	r0, #88
	bne	.LBB0_597
	b	.LBB0_595
.LBB0_595:
	ldr	r0, [sp, #76]
	cmp	r0, #88
	bne	.LBB0_597
	b	.LBB0_596
.LBB0_596:
	ldr	r0, [sp, #72]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_597
.LBB0_597:
	ldr	r0, [sp, #68]
	cmp	r0, #88
	bne	.LBB0_600
	b	.LBB0_598
.LBB0_598:
	ldr	r0, [sp, #64]
	cmp	r0, #88
	bne	.LBB0_600
	b	.LBB0_599
.LBB0_599:
	ldr	r0, [sp, #60]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_600
.LBB0_600:
	ldr	r0, [sp, #92]
	cmp	r0, #88
	bne	.LBB0_603
	b	.LBB0_601
.LBB0_601:
	ldr	r0, [sp, #80]
	cmp	r0, #88
	bne	.LBB0_603
	b	.LBB0_602
.LBB0_602:
	ldr	r0, [sp, #68]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_603
.LBB0_603:
	ldr	r0, [sp, #88]
	cmp	r0, #88
	bne	.LBB0_606
	b	.LBB0_604
.LBB0_604:
	ldr	r0, [sp, #76]
	cmp	r0, #88
	bne	.LBB0_606
	b	.LBB0_605
.LBB0_605:
	ldr	r0, [sp, #64]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_606
.LBB0_606:
	ldr	r0, [sp, #84]
	cmp	r0, #88
	bne	.LBB0_609
	b	.LBB0_607
.LBB0_607:
	ldr	r0, [sp, #72]
	cmp	r0, #88
	bne	.LBB0_609
	b	.LBB0_608
.LBB0_608:
	ldr	r0, [sp, #60]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_609
.LBB0_609:
	ldr	r0, [sp, #92]
	cmp	r0, #88
	bne	.LBB0_612
	b	.LBB0_610
.LBB0_610:
	ldr	r0, [sp, #76]
	cmp	r0, #88
	bne	.LBB0_612
	b	.LBB0_611
.LBB0_611:
	ldr	r0, [sp, #60]
	cmp	r0, #88
	beq	.LBB0_615
	b	.LBB0_612
.LBB0_612:
	ldr	r0, [sp, #84]
	cmp	r0, #88
	bne	.LBB0_670
	b	.LBB0_613
.LBB0_613:
	ldr	r0, [sp, #76]
	cmp	r0, #88
	bne	.LBB0_670
	b	.LBB0_614
.LBB0_614:
	ldr	r0, [sp, #68]
	cmp	r0, #88
	bne	.LBB0_670
	b	.LBB0_615
.LBB0_615:
	b	.LBB0_616
.LBB0_616:
	b	.LBB0_617
.LBB0_617:
	b	.LBB0_618
.LBB0_618:
	b	.LBB0_619
.LBB0_619:
	b	.LBB0_620
.LBB0_620:
	b	.LBB0_621
.LBB0_621:
	b	.LBB0_622
.LBB0_622:
	b	.LBB0_623
.LBB0_623:
	b	.LBB0_624
.LBB0_624:
	b	.LBB0_625
.LBB0_625:
	b	.LBB0_626
.LBB0_626:
	b	.LBB0_627
.LBB0_627:
	b	.LBB0_628
.LBB0_628:
	b	.LBB0_629
.LBB0_629:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_630
.LBB0_630:
	b	.LBB0_631
.LBB0_631:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_632
.LBB0_632:
	b	.LBB0_633
.LBB0_633:
	b	.LBB0_634
.LBB0_634:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_635
.LBB0_635:
	b	.LBB0_636
.LBB0_636:
	b	.LBB0_637
.LBB0_637:
	movs	r0, #89
	str	r0, [sp, #116]
	b	.LBB0_638
.LBB0_638:
	b	.LBB0_639
.LBB0_639:
	b	.LBB0_640
.LBB0_640:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_641
.LBB0_641:
	b	.LBB0_642
.LBB0_642:
	b	.LBB0_643
.LBB0_643:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_644
.LBB0_644:
	b	.LBB0_645
.LBB0_645:
	b	.LBB0_646
.LBB0_646:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_647
.LBB0_647:
	b	.LBB0_648
.LBB0_648:
	b	.LBB0_649
.LBB0_649:
	movs	r0, #88
	str	r0, [sp, #116]
	b	.LBB0_650
.LBB0_650:
	b	.LBB0_651
.LBB0_651:
	b	.LBB0_652
.LBB0_652:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_653
.LBB0_653:
	b	.LBB0_654
.LBB0_654:
	b	.LBB0_655
.LBB0_655:
	movs	r0, #87
	str	r0, [sp, #116]
	b	.LBB0_656
.LBB0_656:
	b	.LBB0_657
.LBB0_657:
	b	.LBB0_658
.LBB0_658:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_659
.LBB0_659:
	b	.LBB0_660
.LBB0_660:
	b	.LBB0_661
.LBB0_661:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_662
.LBB0_662:
	b	.LBB0_663
.LBB0_663:
	b	.LBB0_664
.LBB0_664:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_665
.LBB0_665:
	b	.LBB0_666
.LBB0_666:
	b	.LBB0_667
.LBB0_667:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_668
.LBB0_668:
	b	.LBB0_669
.LBB0_669:
	ldr	r0, [sp, #52]
	adds	r0, r0, #1
	str	r0, [sp, #52]
	b	.LBB0_942
.LBB0_670:
	ldr	r0, [sp, #92]
	cmp	r0, #79
	bne	.LBB0_673
	b	.LBB0_671
.LBB0_671:
	ldr	r0, [sp, #88]
	cmp	r0, #79
	bne	.LBB0_673
	b	.LBB0_672
.LBB0_672:
	ldr	r0, [sp, #84]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_673
.LBB0_673:
	ldr	r0, [sp, #80]
	cmp	r0, #79
	bne	.LBB0_676
	b	.LBB0_674
.LBB0_674:
	ldr	r0, [sp, #76]
	cmp	r0, #79
	bne	.LBB0_676
	b	.LBB0_675
.LBB0_675:
	ldr	r0, [sp, #72]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_676
.LBB0_676:
	ldr	r0, [sp, #68]
	cmp	r0, #79
	bne	.LBB0_679
	b	.LBB0_677
.LBB0_677:
	ldr	r0, [sp, #64]
	cmp	r0, #79
	bne	.LBB0_679
	b	.LBB0_678
.LBB0_678:
	ldr	r0, [sp, #60]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_679
.LBB0_679:
	ldr	r0, [sp, #92]
	cmp	r0, #79
	bne	.LBB0_682
	b	.LBB0_680
.LBB0_680:
	ldr	r0, [sp, #80]
	cmp	r0, #79
	bne	.LBB0_682
	b	.LBB0_681
.LBB0_681:
	ldr	r0, [sp, #68]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_682
.LBB0_682:
	ldr	r0, [sp, #88]
	cmp	r0, #79
	bne	.LBB0_685
	b	.LBB0_683
.LBB0_683:
	ldr	r0, [sp, #76]
	cmp	r0, #79
	bne	.LBB0_685
	b	.LBB0_684
.LBB0_684:
	ldr	r0, [sp, #64]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_685
.LBB0_685:
	ldr	r0, [sp, #84]
	cmp	r0, #79
	bne	.LBB0_688
	b	.LBB0_686
.LBB0_686:
	ldr	r0, [sp, #72]
	cmp	r0, #79
	bne	.LBB0_688
	b	.LBB0_687
.LBB0_687:
	ldr	r0, [sp, #60]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_688
.LBB0_688:
	ldr	r0, [sp, #92]
	cmp	r0, #79
	bne	.LBB0_691
	b	.LBB0_689
.LBB0_689:
	ldr	r0, [sp, #76]
	cmp	r0, #79
	bne	.LBB0_691
	b	.LBB0_690
.LBB0_690:
	ldr	r0, [sp, #60]
	cmp	r0, #79
	beq	.LBB0_694
	b	.LBB0_691
.LBB0_691:
	ldr	r0, [sp, #84]
	cmp	r0, #79
	bne	.LBB0_749
	b	.LBB0_692
.LBB0_692:
	ldr	r0, [sp, #76]
	cmp	r0, #79
	bne	.LBB0_749
	b	.LBB0_693
.LBB0_693:
	ldr	r0, [sp, #68]
	cmp	r0, #79
	bne	.LBB0_749
	b	.LBB0_694
.LBB0_694:
	b	.LBB0_695
.LBB0_695:
	b	.LBB0_696
.LBB0_696:
	b	.LBB0_697
.LBB0_697:
	b	.LBB0_698
.LBB0_698:
	b	.LBB0_699
.LBB0_699:
	b	.LBB0_700
.LBB0_700:
	b	.LBB0_701
.LBB0_701:
	b	.LBB0_702
.LBB0_702:
	b	.LBB0_703
.LBB0_703:
	b	.LBB0_704
.LBB0_704:
	b	.LBB0_705
.LBB0_705:
	b	.LBB0_706
.LBB0_706:
	b	.LBB0_707
.LBB0_707:
	b	.LBB0_708
.LBB0_708:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_709
.LBB0_709:
	b	.LBB0_710
.LBB0_710:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_711
.LBB0_711:
	b	.LBB0_712
.LBB0_712:
	b	.LBB0_713
.LBB0_713:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_714
.LBB0_714:
	b	.LBB0_715
.LBB0_715:
	b	.LBB0_716
.LBB0_716:
	movs	r0, #89
	str	r0, [sp, #116]
	b	.LBB0_717
.LBB0_717:
	b	.LBB0_718
.LBB0_718:
	b	.LBB0_719
.LBB0_719:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_720
.LBB0_720:
	b	.LBB0_721
.LBB0_721:
	b	.LBB0_722
.LBB0_722:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_723
.LBB0_723:
	b	.LBB0_724
.LBB0_724:
	b	.LBB0_725
.LBB0_725:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_726
.LBB0_726:
	b	.LBB0_727
.LBB0_727:
	b	.LBB0_728
.LBB0_728:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_729
.LBB0_729:
	b	.LBB0_730
.LBB0_730:
	b	.LBB0_731
.LBB0_731:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_732
.LBB0_732:
	b	.LBB0_733
.LBB0_733:
	b	.LBB0_734
.LBB0_734:
	movs	r0, #87
	str	r0, [sp, #116]
	b	.LBB0_735
.LBB0_735:
	b	.LBB0_736
.LBB0_736:
	b	.LBB0_737
.LBB0_737:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_738
.LBB0_738:
	b	.LBB0_739
.LBB0_739:
	b	.LBB0_740
.LBB0_740:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_741
.LBB0_741:
	b	.LBB0_742
.LBB0_742:
	b	.LBB0_743
.LBB0_743:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_744
.LBB0_744:
	b	.LBB0_745
.LBB0_745:
	b	.LBB0_746
.LBB0_746:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_747
.LBB0_747:
	b	.LBB0_748
.LBB0_748:
	ldr	r0, [sp, #48]
	adds	r0, r0, #1
	str	r0, [sp, #48]
	b	.LBB0_942
.LBB0_749:
	ldr	r0, [sp, #92]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_750
.LBB0_750:
	ldr	r0, [sp, #88]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_751
.LBB0_751:
	ldr	r0, [sp, #84]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_752
.LBB0_752:
	ldr	r0, [sp, #80]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_753
.LBB0_753:
	ldr	r0, [sp, #76]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_754
.LBB0_754:
	ldr	r0, [sp, #72]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_755
.LBB0_755:
	ldr	r0, [sp, #68]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_756
.LBB0_756:
	ldr	r0, [sp, #64]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_757
.LBB0_757:
	ldr	r0, [sp, #60]
	cmp	r0, #32
	beq	.LBB0_777
	b	.LBB0_758
.LBB0_758:
	b	.LBB0_759
.LBB0_759:
	b	.LBB0_760
.LBB0_760:
	b	.LBB0_761
.LBB0_761:
	b	.LBB0_762
.LBB0_762:
	b	.LBB0_763
.LBB0_763:
	movs	r0, #68
	str	r0, [sp, #116]
	b	.LBB0_764
.LBB0_764:
	b	.LBB0_765
.LBB0_765:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_766
.LBB0_766:
	b	.LBB0_767
.LBB0_767:
	b	.LBB0_768
.LBB0_768:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_769
.LBB0_769:
	b	.LBB0_770
.LBB0_770:
	b	.LBB0_771
.LBB0_771:
	movs	r0, #87
	str	r0, [sp, #116]
	b	.LBB0_772
.LBB0_772:
	b	.LBB0_773
.LBB0_773:
	b	.LBB0_774
.LBB0_774:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_775
.LBB0_775:
	b	.LBB0_776
.LBB0_776:
	b	.LBB0_942
.LBB0_777:
	b	.LBB0_778
.LBB0_778:
	b	.LBB0_779
.LBB0_779:
	b	.LBB0_780
.LBB0_780:
	b	.LBB0_781
.LBB0_781:
	b	.LBB0_782
.LBB0_782:
	b	.LBB0_783
.LBB0_783:
	b	.LBB0_784
.LBB0_784:
	b	.LBB0_785
.LBB0_785:
	b	.LBB0_786
.LBB0_786:
	b	.LBB0_787
.LBB0_787:
	b	.LBB0_788
.LBB0_788:
	b	.LBB0_789
.LBB0_789:
	b	.LBB0_790
.LBB0_790:
	b	.LBB0_791
.LBB0_791:
	b	.LBB0_792
.LBB0_792:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_793
.LBB0_793:
	b	.LBB0_794
.LBB0_794:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_795
.LBB0_795:
	b	.LBB0_796
.LBB0_796:
	b	.LBB0_797
.LBB0_797:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_798
.LBB0_798:
	b	.LBB0_799
.LBB0_799:
	b	.LBB0_800
.LBB0_800:
	movs	r0, #89
	str	r0, [sp, #116]
	b	.LBB0_801
.LBB0_801:
	b	.LBB0_802
.LBB0_802:
	b	.LBB0_803
.LBB0_803:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_804
.LBB0_804:
	b	.LBB0_805
.LBB0_805:
	b	.LBB0_806
.LBB0_806:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_807
.LBB0_807:
	b	.LBB0_808
.LBB0_808:
	b	.LBB0_809
.LBB0_809:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_810
.LBB0_810:
	b	.LBB0_811
.LBB0_811:
	b	.LBB0_812
.LBB0_812:
	ldr	r0, [sp, #56]
	str	r0, [sp, #116]
	b	.LBB0_813
.LBB0_813:
	b	.LBB0_814
.LBB0_814:
	b	.LBB0_815
.LBB0_815:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_816
.LBB0_816:
	b	.LBB0_817
.LBB0_817:
	b	.LBB0_818
.LBB0_818:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_819
.LBB0_819:
	b	.LBB0_820
.LBB0_820:
	b	.LBB0_821
.LBB0_821:
	movs	r0, #85
	str	r0, [sp, #116]
	b	.LBB0_822
.LBB0_822:
	b	.LBB0_823
.LBB0_823:
	b	.LBB0_824
.LBB0_824:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_825
.LBB0_825:
	b	.LBB0_826
.LBB0_826:
	b	.LBB0_827
.LBB0_827:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_828
.LBB0_828:
	b	.LBB0_829
.LBB0_829:
	b	.LBB0_830
.LBB0_830:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_831
.LBB0_831:
	b	.LBB0_832
.LBB0_832:
	b	.LBB0_833
.LBB0_833:
	b	.LBB0_834
.LBB0_834:
	b	.LBB0_835
.LBB0_835:
	b	.LBB0_836
.LBB0_836:
	b	.LBB0_837
.LBB0_837:
	b	.LBB0_838
.LBB0_838:
	b	.LBB0_839
.LBB0_839:
	b	.LBB0_840
.LBB0_840:
	b	.LBB0_841
.LBB0_841:
	b	.LBB0_842
.LBB0_842:
	b	.LBB0_843
.LBB0_843:
	b	.LBB0_844
.LBB0_844:
	b	.LBB0_845
.LBB0_845:
	b	.LBB0_846
.LBB0_846:
	b	.LBB0_847
.LBB0_847:
	b	.LBB0_848
.LBB0_848:
	b	.LBB0_849
.LBB0_849:
	b	.LBB0_850
.LBB0_850:
	b	.LBB0_851
.LBB0_851:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_852
.LBB0_852:
	b	.LBB0_853
.LBB0_853:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_854
.LBB0_854:
	b	.LBB0_855
.LBB0_855:
	b	.LBB0_856
.LBB0_856:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_857
.LBB0_857:
	b	.LBB0_858
.LBB0_858:
	b	.LBB0_859
.LBB0_859:
	movs	r0, #85
	str	r0, [sp, #116]
	b	.LBB0_860
.LBB0_860:
	b	.LBB0_861
.LBB0_861:
	b	.LBB0_862
.LBB0_862:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_863
.LBB0_863:
	b	.LBB0_864
.LBB0_864:
	b	.LBB0_865
.LBB0_865:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_866
.LBB0_866:
	b	.LBB0_867
.LBB0_867:
	b	.LBB0_868
.LBB0_868:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_869
.LBB0_869:
	b	.LBB0_870
.LBB0_870:
	b	.LBB0_871
.LBB0_871:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_872
.LBB0_872:
	b	.LBB0_873
.LBB0_873:
	b	.LBB0_874
.LBB0_874:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_875
.LBB0_875:
	b	.LBB0_876
.LBB0_876:
	b	.LBB0_877
.LBB0_877:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_878
.LBB0_878:
	b	.LBB0_879
.LBB0_879:
	b	.LBB0_880
.LBB0_880:
	movs	r0, #68
	str	r0, [sp, #116]
	b	.LBB0_881
.LBB0_881:
	b	.LBB0_882
.LBB0_882:
	b	.LBB0_883
.LBB0_883:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_884
.LBB0_884:
	b	.LBB0_885
.LBB0_885:
	b	.LBB0_886
.LBB0_886:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_887
.LBB0_887:
	b	.LBB0_888
.LBB0_888:
	b	.LBB0_889
.LBB0_889:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_890
.LBB0_890:
	b	.LBB0_891
.LBB0_891:
	b	.LBB0_892
.LBB0_892:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_893
.LBB0_893:
	b	.LBB0_894
.LBB0_894:
	b	.LBB0_895
.LBB0_895:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_896
.LBB0_896:
	b	.LBB0_897
.LBB0_897:
	b	.LBB0_898
.LBB0_898:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_899
.LBB0_899:
	b	.LBB0_900
.LBB0_900:
	b	.LBB0_901
.LBB0_901:
	movs	r0, #58
	str	r0, [sp, #116]
	b	.LBB0_902
.LBB0_902:
	b	.LBB0_903
.LBB0_903:
	b	.LBB0_904
.LBB0_904:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_905
.LBB0_905:
	b	.LBB0_906
.LBB0_906:
	movs	r0, #0
	str	r0, [sp, #36]
	b	.LBB0_907
.LBB0_907:
	b	.LBB0_908
.LBB0_908:
	b	.LBB0_909
.LBB0_909:
	ldr	r0, [sp, #140]
	cmp	r0, #0
	bne	.LBB0_911
	b	.LBB0_910
.LBB0_910:
	b	.LBB0_909
.LBB0_911:
	b	.LBB0_912
.LBB0_912:
	ldr	r0, [sp, #144]
	str	r0, [sp, #28]
	ldr	r0, [sp, #28]
	str	r0, [sp, #32]
	ldr	r0, [sp, #32]
	cmp	r0, #10
	bne	.LBB0_914
	b	.LBB0_913
.LBB0_913:
	b	.LBB0_920
.LBB0_914:
	ldr	r0, [sp, #32]
	cmp	r0, #48
	blt	.LBB0_916
	b	.LBB0_915
.LBB0_915:
	ldr	r0, [sp, #32]
	cmp	r0, #58
	blt	.LBB0_917
	b	.LBB0_916
.LBB0_916:
	b	.LBB0_907
.LBB0_917:
	b	.LBB0_918
.LBB0_918:
	ldr	r0, [sp, #32]
	str	r0, [sp, #116]
	b	.LBB0_919
.LBB0_919:
	ldr	r1, [sp, #36]
	movs	r0, #10
	muls	r0, r1, r0
	str	r0, [sp, #36]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	adds	r0, r0, r1
	subs	r0, #48
	str	r0, [sp, #36]
	b	.LBB0_907
.LBB0_920:
	ldr	r0, [sp, #36]
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	str	r0, [sp, #44]
	ldr	r0, [sp, #44]
	str	r0, [sp, #12]
	cmp	r0, #11
	beq	.LBB0_923
	b	.LBB0_921
.LBB0_921:
	ldr	r0, [sp, #12]
	cmp	r0, #12
	beq	.LBB0_924
	b	.LBB0_922
.LBB0_922:
	ldr	r0, [sp, #12]
	cmp	r0, #13
	beq	.LBB0_925
	b	.LBB0_926
.LBB0_923:
	ldr	r0, [sp, #56]
	str	r0, [sp, #92]
	b	.LBB0_926
.LBB0_924:
	ldr	r0, [sp, #56]
	str	r0, [sp, #88]
	b	.LBB0_926
.LBB0_925:
	ldr	r0, [sp, #56]
	str	r0, [sp, #84]
	b	.LBB0_926
.LBB0_926:
	ldr	r0, [sp, #44]
	str	r0, [sp, #8]
	cmp	r0, #21
	beq	.LBB0_929
	b	.LBB0_927
.LBB0_927:
	ldr	r0, [sp, #8]
	cmp	r0, #22
	beq	.LBB0_930
	b	.LBB0_928
.LBB0_928:
	ldr	r0, [sp, #8]
	cmp	r0, #23
	beq	.LBB0_931
	b	.LBB0_932
.LBB0_929:
	ldr	r0, [sp, #56]
	str	r0, [sp, #80]
	b	.LBB0_932
.LBB0_930:
	ldr	r0, [sp, #56]
	str	r0, [sp, #76]
	b	.LBB0_932
.LBB0_931:
	ldr	r0, [sp, #56]
	str	r0, [sp, #72]
	b	.LBB0_932
.LBB0_932:
	ldr	r0, [sp, #44]
	str	r0, [sp, #4]
	cmp	r0, #31
	beq	.LBB0_935
	b	.LBB0_933
.LBB0_933:
	ldr	r0, [sp, #4]
	cmp	r0, #32
	beq	.LBB0_936
	b	.LBB0_934
.LBB0_934:
	ldr	r0, [sp, #4]
	cmp	r0, #33
	beq	.LBB0_937
	b	.LBB0_938
.LBB0_935:
	ldr	r0, [sp, #56]
	str	r0, [sp, #68]
	b	.LBB0_938
.LBB0_936:
	ldr	r0, [sp, #56]
	str	r0, [sp, #64]
	b	.LBB0_938
.LBB0_937:
	ldr	r0, [sp, #56]
	str	r0, [sp, #60]
	b	.LBB0_938
.LBB0_938:
	ldr	r0, [sp, #56]
	cmp	r0, #88
	bne	.LBB0_940
	b	.LBB0_939
.LBB0_939:
	movs	r0, #79
	str	r0, [sp, #56]
	b	.LBB0_941
.LBB0_940:
	movs	r0, #88
	str	r0, [sp, #56]
	b	.LBB0_941
.LBB0_941:
	b	.LBB0_477
.LBB0_942:
	b	.LBB0_948
.LBB0_943:
	b	.LBB0_944
.LBB0_944:
	b	.LBB0_945
.LBB0_945:
	movs	r0, #12
	str	r0, [sp, #116]
	b	.LBB0_946
.LBB0_946:
	b	.LBB0_947
.LBB0_947:
	movs	r0, #32
	str	r0, [sp]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r0, [sp, #84]
	str	r0, [sp, #80]
	str	r0, [sp, #76]
	str	r0, [sp, #72]
	str	r0, [sp, #68]
	str	r0, [sp, #64]
	str	r0, [sp, #60]
	movs	r0, #97
	str	r0, [sp, #44]
	movs	r0, #88
	str	r0, [sp, #56]
	b	.LBB0_477
.LBB0_948:
	b	.LBB0_949
.LBB0_949:
	b	.LBB0_950
.LBB0_950:
	b	.LBB0_951
.LBB0_951:
	b	.LBB0_952
.LBB0_952:
	b	.LBB0_953
.LBB0_953:
	b	.LBB0_954
.LBB0_954:
	b	.LBB0_955
.LBB0_955:
	b	.LBB0_956
.LBB0_956:
	b	.LBB0_957
.LBB0_957:
	b	.LBB0_958
.LBB0_958:
	b	.LBB0_959
.LBB0_959:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_960
.LBB0_960:
	b	.LBB0_961
.LBB0_961:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_962
.LBB0_962:
	b	.LBB0_963
.LBB0_963:
	b	.LBB0_964
.LBB0_964:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_965
.LBB0_965:
	b	.LBB0_966
.LBB0_966:
	b	.LBB0_967
.LBB0_967:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_968
.LBB0_968:
	b	.LBB0_969
.LBB0_969:
	b	.LBB0_970
.LBB0_970:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_971
.LBB0_971:
	b	.LBB0_972
.LBB0_972:
	b	.LBB0_973
.LBB0_973:
	movs	r0, #66
	str	r0, [sp, #116]
	b	.LBB0_974
.LBB0_974:
	b	.LBB0_975
.LBB0_975:
	b	.LBB0_976
.LBB0_976:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_977
.LBB0_977:
	b	.LBB0_978
.LBB0_978:
	b	.LBB0_979
.LBB0_979:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_980
.LBB0_980:
	b	.LBB0_981
.LBB0_981:
	b	.LBB0_982
.LBB0_982:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_983
.LBB0_983:
	b	.LBB0_984
.LBB0_984:
	b	.LBB0_985
.LBB0_985:
	movs	r0, #68
	str	r0, [sp, #116]
	b	.LBB0_986
.LBB0_986:
	b	.LBB0_987
.LBB0_987:
	b	.LBB0_988
.LBB0_988:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_989
.LBB0_989:
	b	.LBB0_990
.LBB0_990:
	b	.LBB0_991
.LBB0_991:
	b	.LBB0_992
.LBB0_992:
	b	.LBB0_993
.LBB0_993:
	b	.LBB0_994
.LBB0_994:
	b	.LBB0_995
.LBB0_995:
	b	.LBB0_996
.LBB0_996:
	b	.LBB0_997
.LBB0_997:
	b	.LBB0_998
.LBB0_998:
	b	.LBB0_999
.LBB0_999:
	b	.LBB0_1000
.LBB0_1000:
	b	.LBB0_1001
.LBB0_1001:
	b	.LBB0_1002
.LBB0_1002:
	b	.LBB0_1003
.LBB0_1003:
	b	.LBB0_1004
.LBB0_1004:
	b	.LBB0_1005
.LBB0_1005:
	b	.LBB0_1006
.LBB0_1006:
	b	.LBB0_1007
.LBB0_1007:
	b	.LBB0_1008
.LBB0_1008:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_1009
.LBB0_1009:
	b	.LBB0_1010
.LBB0_1010:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_1011
.LBB0_1011:
	b	.LBB0_1012
.LBB0_1012:
	b	.LBB0_1013
.LBB0_1013:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_1014
.LBB0_1014:
	b	.LBB0_1015
.LBB0_1015:
	b	.LBB0_1016
.LBB0_1016:
	movs	r0, #89
	str	r0, [sp, #116]
	b	.LBB0_1017
.LBB0_1017:
	b	.LBB0_1018
.LBB0_1018:
	b	.LBB0_1019
.LBB0_1019:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1020
.LBB0_1020:
	b	.LBB0_1021
.LBB0_1021:
	b	.LBB0_1022
.LBB0_1022:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1023
.LBB0_1023:
	b	.LBB0_1024
.LBB0_1024:
	b	.LBB0_1025
.LBB0_1025:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1026
.LBB0_1026:
	b	.LBB0_1027
.LBB0_1027:
	b	.LBB0_1028
.LBB0_1028:
	movs	r0, #88
	str	r0, [sp, #116]
	b	.LBB0_1029
.LBB0_1029:
	b	.LBB0_1030
.LBB0_1030:
	b	.LBB0_1031
.LBB0_1031:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1032
.LBB0_1032:
	b	.LBB0_1033
.LBB0_1033:
	b	.LBB0_1034
.LBB0_1034:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_1035
.LBB0_1035:
	b	.LBB0_1036
.LBB0_1036:
	b	.LBB0_1037
.LBB0_1037:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_1038
.LBB0_1038:
	b	.LBB0_1039
.LBB0_1039:
	b	.LBB0_1040
.LBB0_1040:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_1041
.LBB0_1041:
	b	.LBB0_1042
.LBB0_1042:
	b	.LBB0_1043
.LBB0_1043:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1044
.LBB0_1044:
	b	.LBB0_1045
.LBB0_1045:
	b	.LBB0_1046
.LBB0_1046:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1047
.LBB0_1047:
	b	.LBB0_1048
.LBB0_1048:
	b	.LBB0_1049
.LBB0_1049:
	movs	r0, #58
	str	r0, [sp, #116]
	b	.LBB0_1050
.LBB0_1050:
	b	.LBB0_1051
.LBB0_1051:
	b	.LBB0_1052
.LBB0_1052:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1053
.LBB0_1053:
	b	.LBB0_1054
.LBB0_1054:
	b	.LBB0_1055
.LBB0_1055:
	ldr	r0, [sp, #52]
	adds	r0, #48
	str	r0, [sp, #116]
	b	.LBB0_1056
.LBB0_1056:
	b	.LBB0_1057
.LBB0_1057:
	b	.LBB0_1058
.LBB0_1058:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_1059
.LBB0_1059:
	b	.LBB0_1060
.LBB0_1060:
	b	.LBB0_1061
.LBB0_1061:
	b	.LBB0_1062
.LBB0_1062:
	b	.LBB0_1063
.LBB0_1063:
	b	.LBB0_1064
.LBB0_1064:
	b	.LBB0_1065
.LBB0_1065:
	b	.LBB0_1066
.LBB0_1066:
	b	.LBB0_1067
.LBB0_1067:
	b	.LBB0_1068
.LBB0_1068:
	b	.LBB0_1069
.LBB0_1069:
	b	.LBB0_1070
.LBB0_1070:
	b	.LBB0_1071
.LBB0_1071:
	b	.LBB0_1072
.LBB0_1072:
	b	.LBB0_1073
.LBB0_1073:
	b	.LBB0_1074
.LBB0_1074:
	b	.LBB0_1075
.LBB0_1075:
	b	.LBB0_1076
.LBB0_1076:
	b	.LBB0_1077
.LBB0_1077:
	b	.LBB0_1078
.LBB0_1078:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_1079
.LBB0_1079:
	b	.LBB0_1080
.LBB0_1080:
	movs	r0, #76
	str	r0, [sp, #116]
	b	.LBB0_1081
.LBB0_1081:
	b	.LBB0_1082
.LBB0_1082:
	b	.LBB0_1083
.LBB0_1083:
	movs	r0, #65
	str	r0, [sp, #116]
	b	.LBB0_1084
.LBB0_1084:
	b	.LBB0_1085
.LBB0_1085:
	b	.LBB0_1086
.LBB0_1086:
	movs	r0, #89
	str	r0, [sp, #116]
	b	.LBB0_1087
.LBB0_1087:
	b	.LBB0_1088
.LBB0_1088:
	b	.LBB0_1089
.LBB0_1089:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1090
.LBB0_1090:
	b	.LBB0_1091
.LBB0_1091:
	b	.LBB0_1092
.LBB0_1092:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1093
.LBB0_1093:
	b	.LBB0_1094
.LBB0_1094:
	b	.LBB0_1095
.LBB0_1095:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1096
.LBB0_1096:
	b	.LBB0_1097
.LBB0_1097:
	b	.LBB0_1098
.LBB0_1098:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_1099
.LBB0_1099:
	b	.LBB0_1100
.LBB0_1100:
	b	.LBB0_1101
.LBB0_1101:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1102
.LBB0_1102:
	b	.LBB0_1103
.LBB0_1103:
	b	.LBB0_1104
.LBB0_1104:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_1105
.LBB0_1105:
	b	.LBB0_1106
.LBB0_1106:
	b	.LBB0_1107
.LBB0_1107:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_1108
.LBB0_1108:
	b	.LBB0_1109
.LBB0_1109:
	b	.LBB0_1110
.LBB0_1110:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_1111
.LBB0_1111:
	b	.LBB0_1112
.LBB0_1112:
	b	.LBB0_1113
.LBB0_1113:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1114
.LBB0_1114:
	b	.LBB0_1115
.LBB0_1115:
	b	.LBB0_1116
.LBB0_1116:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1117
.LBB0_1117:
	b	.LBB0_1118
.LBB0_1118:
	b	.LBB0_1119
.LBB0_1119:
	movs	r0, #58
	str	r0, [sp, #116]
	b	.LBB0_1120
.LBB0_1120:
	b	.LBB0_1121
.LBB0_1121:
	b	.LBB0_1122
.LBB0_1122:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1123
.LBB0_1123:
	b	.LBB0_1124
.LBB0_1124:
	b	.LBB0_1125
.LBB0_1125:
	ldr	r0, [sp, #48]
	adds	r0, #48
	str	r0, [sp, #116]
	b	.LBB0_1126
.LBB0_1126:
	b	.LBB0_1127
.LBB0_1127:
	b	.LBB0_1128
.LBB0_1128:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_1129
.LBB0_1129:
	b	.LBB0_1130
.LBB0_1130:
	b	.LBB0_1131
.LBB0_1131:
	b	.LBB0_1132
.LBB0_1132:
	b	.LBB0_1133
.LBB0_1133:
	b	.LBB0_1134
.LBB0_1134:
	b	.LBB0_1135
.LBB0_1135:
	b	.LBB0_1136
.LBB0_1136:
	b	.LBB0_1137
.LBB0_1137:
	b	.LBB0_1138
.LBB0_1138:
	b	.LBB0_1139
.LBB0_1139:
	b	.LBB0_1140
.LBB0_1140:
	b	.LBB0_1141
.LBB0_1141:
	b	.LBB0_1142
.LBB0_1142:
	b	.LBB0_1143
.LBB0_1143:
	b	.LBB0_1144
.LBB0_1144:
	b	.LBB0_1145
.LBB0_1145:
	b	.LBB0_1146
.LBB0_1146:
	b	.LBB0_1147
.LBB0_1147:
	b	.LBB0_1148
.LBB0_1148:
	b	.LBB0_1149
.LBB0_1149:
	b	.LBB0_1150
.LBB0_1150:
	b	.LBB0_1151
.LBB0_1151:
	b	.LBB0_1152
.LBB0_1152:
	b	.LBB0_1153
.LBB0_1153:
	b	.LBB0_1154
.LBB0_1154:
	movs	r0, #80
	str	r0, [sp, #116]
	b	.LBB0_1155
.LBB0_1155:
	b	.LBB0_1156
.LBB0_1156:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1157
.LBB0_1157:
	b	.LBB0_1158
.LBB0_1158:
	b	.LBB0_1159
.LBB0_1159:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1160
.LBB0_1160:
	b	.LBB0_1161
.LBB0_1161:
	b	.LBB0_1162
.LBB0_1162:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_1163
.LBB0_1163:
	b	.LBB0_1164
.LBB0_1164:
	b	.LBB0_1165
.LBB0_1165:
	movs	r0, #83
	str	r0, [sp, #116]
	b	.LBB0_1166
.LBB0_1166:
	b	.LBB0_1167
.LBB0_1167:
	b	.LBB0_1168
.LBB0_1168:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1169
.LBB0_1169:
	b	.LBB0_1170
.LBB0_1170:
	b	.LBB0_1171
.LBB0_1171:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1172
.LBB0_1172:
	b	.LBB0_1173
.LBB0_1173:
	b	.LBB0_1174
.LBB0_1174:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_1175
.LBB0_1175:
	b	.LBB0_1176
.LBB0_1176:
	b	.LBB0_1177
.LBB0_1177:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_1178
.LBB0_1178:
	b	.LBB0_1179
.LBB0_1179:
	b	.LBB0_1180
.LBB0_1180:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1181
.LBB0_1181:
	b	.LBB0_1182
.LBB0_1182:
	b	.LBB0_1183
.LBB0_1183:
	movs	r0, #82
	str	r0, [sp, #116]
	b	.LBB0_1184
.LBB0_1184:
	b	.LBB0_1185
.LBB0_1185:
	b	.LBB0_1186
.LBB0_1186:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1187
.LBB0_1187:
	b	.LBB0_1188
.LBB0_1188:
	b	.LBB0_1189
.LBB0_1189:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_1190
.LBB0_1190:
	b	.LBB0_1191
.LBB0_1191:
	b	.LBB0_1192
.LBB0_1192:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_1193
.LBB0_1193:
	b	.LBB0_1194
.LBB0_1194:
	b	.LBB0_1195
.LBB0_1195:
	movs	r0, #32
	str	r0, [sp, #116]
	b	.LBB0_1196
.LBB0_1196:
	b	.LBB0_1197
.LBB0_1197:
	b	.LBB0_1198
.LBB0_1198:
	movs	r0, #67
	str	r0, [sp, #116]
	b	.LBB0_1199
.LBB0_1199:
	b	.LBB0_1200
.LBB0_1200:
	b	.LBB0_1201
.LBB0_1201:
	movs	r0, #79
	str	r0, [sp, #116]
	b	.LBB0_1202
.LBB0_1202:
	b	.LBB0_1203
.LBB0_1203:
	b	.LBB0_1204
.LBB0_1204:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_1205
.LBB0_1205:
	b	.LBB0_1206
.LBB0_1206:
	b	.LBB0_1207
.LBB0_1207:
	movs	r0, #84
	str	r0, [sp, #116]
	b	.LBB0_1208
.LBB0_1208:
	b	.LBB0_1209
.LBB0_1209:
	b	.LBB0_1210
.LBB0_1210:
	movs	r0, #73
	str	r0, [sp, #116]
	b	.LBB0_1211
.LBB0_1211:
	b	.LBB0_1212
.LBB0_1212:
	b	.LBB0_1213
.LBB0_1213:
	movs	r0, #78
	str	r0, [sp, #116]
	b	.LBB0_1214
.LBB0_1214:
	b	.LBB0_1215
.LBB0_1215:
	b	.LBB0_1216
.LBB0_1216:
	movs	r0, #85
	str	r0, [sp, #116]
	b	.LBB0_1217
.LBB0_1217:
	b	.LBB0_1218
.LBB0_1218:
	b	.LBB0_1219
.LBB0_1219:
	movs	r0, #69
	str	r0, [sp, #116]
	b	.LBB0_1220
.LBB0_1220:
	b	.LBB0_1221
.LBB0_1221:
	b	.LBB0_1222
.LBB0_1222:
	movs	r0, #10
	str	r0, [sp, #116]
	b	.LBB0_1223
.LBB0_1223:
	b	.LBB0_1224
.LBB0_1224:
	b	.LBB0_1225
.LBB0_1225:
	b	.LBB0_1226
.LBB0_1226:
	ldr	r0, [sp, #140]
	cmp	r0, #0
	bne	.LBB0_1228
	b	.LBB0_1227
.LBB0_1227:
	b	.LBB0_1226
.LBB0_1228:
	b	.LBB0_1229
.LBB0_1229:
	ldr	r0, [sp, #144]
	str	r0, [sp, #20]
	b	.LBB0_943
.Lfunc_end0:
	.size	run, .Lfunc_end0-run
	.cantunwind
	.fnend

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6
