.class public Lorg/yaml/snakeyaml/DumperOptions;
.super Ljava/lang/Object;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$Version;,
        Lorg/yaml/snakeyaml/DumperOptions$LineBreak;,
        Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    }
.end annotation


# instance fields
.field private allowReadOnlyProperties:Z

.field private allowUnicode:Z

.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private bestWidth:I

.field private canonical:Z

.field private defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private explicitEnd:Z

.field private explicitStart:Z

.field private indent:I

.field private indicatorIndent:I

.field private lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field private maxSimpleKeyLength:I

.field private nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

.field private prettyFlow:Ljava/lang/Boolean;

.field private splitLines:Z

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field private version:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 184
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 187
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 188
    const/4 v2, 0x2

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 189
    iput v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 190
    const/16 v2, 0x50

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 191
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 192
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 193
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 194
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 196
    const/16 v2, 0x80

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    .line 197
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    iput-object v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 199
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 200
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 201
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 202
    new-instance v1, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-void
.end method


# virtual methods
.method public getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-object v0
.end method

.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .line 251
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    return v0
.end method

.method public getIndicatorIndent()I
    .locals 1

    .line 265
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    return v0
.end method

.method public getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method

.method public getMaxSimpleKeyLength()I
    .locals 1

    .line 433
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    return v0
.end method

.method public getNonPrintableStyle()Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    return-object v0
.end method

.method public getSplitLines()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    return v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 318
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    return v0
.end method

.method public isAllowReadOnlyProperties()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    return v0
.end method

.method public isAllowUnicode()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    return v0
.end method

.method public isCanonical()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    return v0
.end method

.method public isExplicitEnd()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    return v0
.end method

.method public isExplicitStart()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    return v0
.end method

.method public isPrettyFlow()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAllowReadOnlyProperties(Z)V
    .locals 0
    .param p1, "allowReadOnlyProperties"    # Z

    .line 407
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 408
    return-void
.end method

.method public setAllowUnicode(Z)V
    .locals 0
    .param p1, "allowUnicode"    # Z

    .line 219
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 220
    return-void
.end method

.method public setAnchorGenerator(Lorg/yaml/snakeyaml/serializer/AnchorGenerator;)V
    .locals 0
    .param p1, "anchorGenerator"    # Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 429
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 430
    return-void
.end method

.method public setCanonical(Z)V
    .locals 0
    .param p1, "canonical"    # Z

    .line 283
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 284
    return-void
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 2
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 341
    if-eqz p1, :cond_0

    .line 344
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 345
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use FlowStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .locals 2
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 234
    if-eqz p1, :cond_0

    .line 237
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 238
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use ScalarStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExplicitEnd(Z)V
    .locals 0
    .param p1, "explicitEnd"    # Z

    .line 377
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 378
    return-void
.end method

.method public setExplicitStart(Z)V
    .locals 0
    .param p1, "explicitStart"    # Z

    .line 369
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 370
    return-void
.end method

.method public setIndent(I)V
    .locals 2
    .param p1, "indent"    # I

    .line 241
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 244
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 247
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 248
    return-void

    .line 245
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at most 10"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at least 1"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndicatorIndent(I)V
    .locals 2
    .param p1, "indicatorIndent"    # I

    .line 255
    if-ltz p1, :cond_1

    .line 258
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 261
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 262
    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be at most Emitter.MAX_INDENT-1: 9"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be non-negative."

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLineBreak(Lorg/yaml/snakeyaml/DumperOptions$LineBreak;)V
    .locals 2
    .param p1, "lineBreak"    # Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 358
    if-eqz p1, :cond_0

    .line 361
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 362
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specify line break."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSimpleKeyLength(I)V
    .locals 2
    .param p1, "maxSimpleKeyLength"    # I

    .line 442
    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    .line 445
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    .line 446
    return-void

    .line 443
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "The simple key must not span more than 1024 stream characters. See https://yaml.org/spec/1.1/#id934537"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonPrintableStyle(Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 458
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 459
    return-void
.end method

.method public setPrettyFlow(Z)V
    .locals 1
    .param p1, "prettyFlow"    # Z

    .line 298
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 299
    return-void
.end method

.method public setSplitLines(Z)V
    .locals 0
    .param p1, "splitLines"    # Z

    .line 329
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 330
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 386
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 420
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 421
    return-void
.end method

.method public setVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)V
    .locals 0
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 269
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 270
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "bestWidth"    # I

    .line 314
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 315
    return-void
.end method
