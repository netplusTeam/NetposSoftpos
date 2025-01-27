.class public final Lcom/itextpdf/layout/renderer/TypographyUtils;
.super Ljava/lang/Object;
.source "TypographyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
    }
.end annotation


# static fields
.field private static final APPLY_KERNING:Ljava/lang/String; = "applyKerning"

.field private static final APPLY_OTF_SCRIPT:Ljava/lang/String; = "applyOtfScript"

.field private static final BIDI_ALGORITHM:Ljava/lang/String; = "bidi.BidiAlgorithm"

.field private static final BIDI_BRACKET_MAP:Ljava/lang/String; = "bidi.BidiBracketMap"

.field private static final BIDI_CHARACTER_MAP:Ljava/lang/String; = "bidi.BidiCharacterMap"

.field private static final COMPUTE_REORDERING:Ljava/lang/String; = "computeReordering"

.field private static final GET_BRACKET_TYPES:Ljava/lang/String; = "getBracketTypes"

.field private static final GET_BRACKET_VALUES:Ljava/lang/String; = "getBracketValues"

.field private static final GET_CHARACTER_TYPES:Ljava/lang/String; = "getCharacterTypes"

.field private static final GET_LEVELS:Ljava/lang/String; = "getLevels"

.field private static final GET_PAIRED_BRACKET:Ljava/lang/String; = "getPairedBracket"

.field private static final GET_POSSIBLE_BREAKS:Ljava/lang/String; = "getPossibleBreaks"

.field private static final GET_SUPPORTED_SCRIPTS:Ljava/lang/String; = "getSupportedScripts"

.field private static final INVERSE_REORDERING:Ljava/lang/String; = "inverseReordering"

.field private static final SHAPER:Ljava/lang/String; = "shaping.Shaper"

.field private static final SUPPORTED_SCRIPTS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Character$UnicodeScript;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPOGRAPHY_MODULE_INITIALIZED:Z

.field private static final TYPOGRAPHY_PACKAGE:Ljava/lang/String; = "com.itextpdf.typography."

.field private static final WORD_WRAPPER:Ljava/lang/String; = "WordWrapper"

.field private static cachedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static cachedMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;",
            "Ljava/lang/reflect/AccessibleObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    const-string v0, "com.itextpdf.typography.shaping.Shaper"

    const-class v1, Lcom/itextpdf/layout/renderer/TypographyUtils;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedClasses:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "moduleFound":Z
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getTypographyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 107
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 108
    :goto_0
    const/4 v2, 0x0

    .line 109
    .local v2, "supportedScripts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character$UnicodeScript;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 111
    :try_start_1
    const-string v4, "getSupportedScripts"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    .line 115
    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 114
    sget-object v4, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    move v0, v3

    .line 118
    .end local v1    # "moduleFound":Z
    .local v0, "moduleFound":Z
    if-nez v0, :cond_3

    .line 119
    sget-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 120
    sget-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 122
    :cond_3
    sput-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    .line 123
    sput-object v2, Lcom/itextpdf/layout/renderer/TypographyUtils;->SUPPORTED_SCRIPTS:Ljava/util/Collection;

    .line 124
    .end local v0    # "moduleFound":Z
    .end local v2    # "supportedScripts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character$UnicodeScript;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static applyKerning(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 5
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 147
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/itextpdf/io/font/FontProgram;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    const-string v2, "com.itextpdf.typography.shaping.Shaper"

    const-string v3, "applyKerning"

    invoke-static {v2, v3, v1, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_0
    return-void
.end method

.method static applyOtfScript(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/lang/Character$UnicodeScript;Ljava/lang/Object;)V
    .locals 7
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "script"    # Ljava/lang/Character$UnicodeScript;
    .param p3, "typographyConfig"    # Ljava/lang/Object;

    .line 138
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/itextpdf/io/font/TrueTypeFont;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Character$UnicodeScript;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/Object;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    const-string v2, "com.itextpdf.typography.shaping.Shaper"

    const-string v3, "applyOtfScript"

    invoke-static {v2, v3, v1, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    return-void
.end method

.method private static varargs callConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/TypographyUtils;->findConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 306
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 321
    .local v0, "exc":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 309
    .end local v0    # "exc":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string v0, "Cannot find class {0}"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 307
    :catch_2
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string v0, "Cannot find constructor for class {0}"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 322
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 280
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/itextpdf/layout/renderer/TypographyUtils;->findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 281
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 288
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Illegal arguments passed to {0}#{1} method call: {2}"

    invoke-static {v0, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 284
    :catch_2
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "Cannot find class {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 282
    :catch_3
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string v1, "Cannot find method {0} for class {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 299
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 348
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 349
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getTypographyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedClasses:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    return-object v0
.end method

.method private static findConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 338
    .local v0, "tc":Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
    sget-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 339
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 340
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 341
    sget-object v2, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    return-object v1
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;

    invoke-direct {v0, p0, p2, p1}, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;)V

    .line 328
    .local v0, "tm":Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
    sget-object v1, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 329
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 330
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 331
    sget-object v2, Lcom/itextpdf/layout/renderer/TypographyUtils;->cachedMethods:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    return-object v1
.end method

.method static getBidiLevels(Lcom/itextpdf/layout/property/BaseDirection;[I)[B
    .locals 14
    .param p0, "baseDirection"    # Lcom/itextpdf/layout/property/BaseDirection;
    .param p1, "unicodeIds"    # [I

    .line 157
    const-class v0, [B

    const-class v1, [I

    sget-boolean v2, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    if-nez v2, :cond_0

    .line 158
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    sget-object v2, Lcom/itextpdf/layout/renderer/TypographyUtils$1;->$SwitchMap$com$itextpdf$layout$property$BaseDirection:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/property/BaseDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 170
    const/4 v2, 0x2

    .local v2, "direction":B
    goto :goto_0

    .line 166
    .end local v2    # "direction":B
    :pswitch_0
    const/4 v2, 0x1

    .line 167
    .restart local v2    # "direction":B
    goto :goto_0

    .line 163
    .end local v2    # "direction":B
    :pswitch_1
    const/4 v2, 0x0

    .line 164
    .restart local v2    # "direction":B
    nop

    .line 174
    :goto_0
    array-length v3, p1

    .line 175
    .local v3, "len":I
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v5, v9

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v6

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 175
    const-string v10, "com.itextpdf.typography.bidi.BidiCharacterMap"

    const-string v11, "getCharacterTypes"

    invoke-static {v10, v11, v5, v7}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    .line 178
    .local v5, "types":[B
    new-array v7, v4, [Ljava/lang/Class;

    aput-object v1, v7, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v7, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v7, v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object p1, v10, v6

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    .line 178
    const-string v11, "com.itextpdf.typography.bidi.BidiBracketMap"

    const-string v12, "getBracketTypes"

    invoke-static {v11, v12, v7, v10}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 181
    .local v7, "pairTypes":[B
    new-array v10, v4, [Ljava/lang/Class;

    aput-object v1, v10, v6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v8

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v9

    new-array v12, v4, [Ljava/lang/Object;

    aput-object p1, v12, v6

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    .line 181
    const-string v13, "getBracketValues"

    invoke-static {v11, v13, v10, v12}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    check-cast v10, [I

    .line 184
    .local v10, "pairValues":[I
    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v0, v12, v6

    aput-object v0, v12, v8

    aput-object v1, v12, v9

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v0, v12, v4

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v10, v0, v9

    .line 185
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v0, v4

    .line 184
    const-string v4, "com.itextpdf.typography.bidi.BidiAlgorithm"

    invoke-static {v4, v12, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "bidiReorder":Ljava/lang/Object;
    new-array v9, v8, [Ljava/lang/Class;

    aput-object v1, v9, v6

    new-array v1, v8, [Ljava/lang/Object;

    new-array v8, v8, [I

    aput v3, v8, v6

    aput-object v8, v1, v6

    const-string v6, "getLevels"

    invoke-static {v4, v6, v0, v9, v1}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getPossibleBreaks(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 253
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string v2, "com.itextpdf.typography.WordWrapper"

    const-string v3, "getPossibleBreaks"

    invoke-static {v2, v3, v1, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static getSupportedScripts()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Character$UnicodeScript;",
            ">;"
        }
    .end annotation

    .line 235
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->SUPPORTED_SCRIPTS:Ljava/util/Collection;

    return-object v0
.end method

.method static getSupportedScripts(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .param p0, "typographyConfig"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Character$UnicodeScript;",
            ">;"
        }
    .end annotation

    .line 244
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v2, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 246
    return-object v1

    .line 248
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const-string v3, "com.itextpdf.typography.shaping.Shaper"

    const-string v4, "getSupportedScripts"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private static getTypographyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "typographyClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 356
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static isPdfCalligraphAvailable()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    return v0
.end method

.method static reorderLine(Ljava/util/List;[B[B)[I
    .locals 12
    .param p1, "lineLevels"    # [B
    .param p2, "levels"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;",
            ">;[B[B)[I"
        }
    .end annotation

    .line 195
    .local p0, "line":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;>;"
    sget-boolean v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->TYPOGRAPHY_MODULE_INITIALIZED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->logger:Lorg/slf4j/Logger;

    const-string v2, "Cannot find pdfCalligraph module, which was implicitly required by one of the layout properties"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 231
    return-object v1

    .line 198
    :cond_0
    if-nez p2, :cond_1

    .line 199
    return-object v1

    .line 201
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, [B

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "com.itextpdf.typography.bidi.BidiAlgorithm"

    const-string v5, "computeReordering"

    invoke-static {v4, v5, v1, v2}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 204
    .local v1, "reorder":[I
    new-array v2, v0, [Ljava/lang/Class;

    const-class v5, [I

    aput-object v5, v2, v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v6, "inverseReordering"

    invoke-static {v4, v6, v2, v5}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 206
    .local v2, "inverseReorder":[I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v4, "reorderedLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 208
    aget v6, v1, v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    aget v6, v1, v5

    aget-byte v6, p2, v6

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v0, :cond_2

    .line 212
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v6, v6, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v6, v6, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    .line 214
    .local v6, "unicode":I
    new-array v7, v0, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    new-array v8, v0, [Ljava/lang/Object;

    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 214
    const-string v9, "com.itextpdf.typography.bidi.BidiBracketMap"

    const-string v10, "getPairedBracket"

    invoke-static {v9, v10, v7, v8}, Lcom/itextpdf/layout/renderer/TypographyUtils;->callMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 217
    .local v7, "pairedBracket":I
    if-eq v7, v6, :cond_2

    .line 218
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v8, v8, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFont(I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v8

    .line 219
    .local v8, "font":Lcom/itextpdf/kernel/font/PdfFont;
    new-instance v9, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v11, v11, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/layout/renderer/TextRenderer;)V

    invoke-interface {v4, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v6    # "unicode":I
    .end local v7    # "pairedBracket":I
    .end local v8    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "i":I
    :cond_3
    invoke-static {v1, v2, v4}, Lcom/itextpdf/layout/renderer/TypographyUtils;->updateAnchorDeltaForReorderedLineGlyphs([I[ILjava/util/List;)V

    .line 227
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 228
    invoke-interface {p0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    return-object v1
.end method

.method static updateAnchorDeltaForReorderedLineGlyphs([I[ILjava/util/List;)V
    .locals 6
    .param p0, "reorder"    # [I
    .param p1, "inverseReorder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p2, "reorderedLine":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    .line 260
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    aget v2, p0, v0

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v3

    add-int/2addr v2, v3

    .line 262
    .local v2, "oldAnchor":I
    aget v3, p1, v2

    .line 263
    .local v3, "newPos":I
    sub-int v4, v3, v0

    .line 265
    .local v4, "newAnchorDelta":I
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v5

    if-eq v5, v4, :cond_0

    .line 266
    new-instance v5, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v5, v1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    move-object v1, v5

    .line 267
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iput-object v1, v5, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    .line 268
    int-to-short v5, v4

    invoke-virtual {v1, v5}, Lcom/itextpdf/io/font/otf/Glyph;->setAnchorDelta(S)V

    .line 258
    .end local v1    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v2    # "oldAnchor":I
    .end local v3    # "newPos":I
    .end local v4    # "newAnchorDelta":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
