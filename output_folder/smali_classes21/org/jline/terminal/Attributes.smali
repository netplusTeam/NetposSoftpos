.class public Lorg/jline/terminal/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/Attributes$LocalFlag;,
        Lorg/jline/terminal/Attributes$ControlFlag;,
        Lorg/jline/terminal/Attributes$OutputFlag;,
        Lorg/jline/terminal/Attributes$InputFlag;,
        Lorg/jline/terminal/Attributes$ControlChar;
    }
.end annotation


# instance fields
.field final cchars:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jline/terminal/Attributes$ControlChar;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final cflag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$ControlFlag;",
            ">;"
        }
    .end annotation
.end field

.field final iflag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$InputFlag;",
            ">;"
        }
    .end annotation
.end field

.field final lflag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$LocalFlag;",
            ">;"
        }
    .end annotation
.end field

.field final oflag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$OutputFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4L2O1OlzOWnxOX6DFeoA2Gd48Ns(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$ControlChar;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/terminal/Attributes;->display(Lorg/jline/terminal/Attributes$ControlChar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-class v0, Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    .line 133
    const-class v0, Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    .line 134
    const-class v0, Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    .line 135
    const-class v0, Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    .line 136
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jline/terminal/Attributes$ControlChar;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Attributes;)V
    .locals 2
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-class v0, Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    .line 133
    const-class v0, Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    .line 134
    const-class v0, Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    .line 135
    const-class v0, Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    .line 136
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jline/terminal/Attributes$ControlChar;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    .line 142
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Attributes;->copy(Lorg/jline/terminal/Attributes;)V

    .line 143
    return-void
.end method

.method private append(Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/EnumSet<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 342
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    new-instance v0, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private append(Ljava/util/EnumSet;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/EnumSet<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 346
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    .local p2, "toString":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/EnumSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private display(Lorg/jline/terminal/Attributes$ControlChar;)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Lorg/jline/terminal/Attributes$ControlChar;

    .line 324
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v0

    .line 325
    .local v0, "ch":I
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    if-gez v0, :cond_1

    .line 328
    const-string v1, "<undef>"

    .local v1, "value":Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x41

    sub-int/2addr v3, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 331
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_3

    .line 332
    const-string v1, "^?"

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 333
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    if-lt v0, v1, :cond_4

    .line 334
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "\\u%04x"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 336
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 326
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .restart local v1    # "value":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jline/terminal/Attributes$ControlChar;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$append$0(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/lang/Enum;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copy(Lorg/jline/terminal/Attributes;)V
    .locals 1
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;

    .line 304
    invoke-virtual {p1}, Lorg/jline/terminal/Attributes;->getControlFlags()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Attributes;->setControlFlags(Ljava/util/EnumSet;)V

    .line 305
    invoke-virtual {p1}, Lorg/jline/terminal/Attributes;->getInputFlags()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Attributes;->setInputFlags(Ljava/util/EnumSet;)V

    .line 306
    invoke-virtual {p1}, Lorg/jline/terminal/Attributes;->getLocalFlags()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Attributes;->setLocalFlags(Ljava/util/EnumSet;)V

    .line 307
    invoke-virtual {p1}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Attributes;->setOutputFlags(Ljava/util/EnumSet;)V

    .line 308
    invoke-virtual {p1}, Lorg/jline/terminal/Attributes;->getControlChars()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Attributes;->setControlChars(Ljava/util/EnumMap;)V

    .line 309
    return-void
.end method

.method public getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I
    .locals 2
    .param p1, "c"    # Lorg/jline/terminal/Attributes$ControlChar;

    .line 291
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getControlChars()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lorg/jline/terminal/Attributes$ControlChar;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$ControlFlag;

    .line 225
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getControlFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$ControlFlag;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$InputFlag;

    .line 159
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInputFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$InputFlag;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$LocalFlag;

    .line 258
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLocalFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$LocalFlag;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$OutputFlag;

    .line 192
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOutputFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$OutputFlag;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    return-object v0
.end method

.method public setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V
    .locals 2
    .param p1, "c"    # Lorg/jline/terminal/Attributes$ControlChar;
    .param p2, "value"    # I

    .line 296
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public setControlChars(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lorg/jline/terminal/Attributes$ControlChar;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "chars":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lorg/jline/terminal/Attributes$ControlChar;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 287
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cchars:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 288
    return-void
.end method

.method public setControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;Z)V
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$ControlFlag;
    .param p2, "value"    # Z

    .line 237
    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    return-void
.end method

.method public setControlFlags(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$ControlFlag;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 221
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method

.method public setControlFlags(Ljava/util/EnumSet;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$ControlFlag;",
            ">;Z)V"
        }
    .end annotation

    .line 229
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    if-eqz p2, :cond_0

    .line 230
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 234
    :goto_0
    return-void
.end method

.method public setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$InputFlag;
    .param p2, "value"    # Z

    .line 171
    if-eqz p2, :cond_0

    .line 172
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    return-void
.end method

.method public setInputFlags(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$InputFlag;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 155
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-void
.end method

.method public setInputFlags(Ljava/util/EnumSet;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$InputFlag;",
            ">;Z)V"
        }
    .end annotation

    .line 163
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 168
    :goto_0
    return-void
.end method

.method public setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$LocalFlag;
    .param p2, "value"    # Z

    .line 270
    if-eqz p2, :cond_0

    .line 271
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 275
    :goto_0
    return-void
.end method

.method public setLocalFlags(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$LocalFlag;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 254
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 255
    return-void
.end method

.method public setLocalFlags(Ljava/util/EnumSet;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$LocalFlag;",
            ">;Z)V"
        }
    .end annotation

    .line 262
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 267
    :goto_0
    return-void
.end method

.method public setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V
    .locals 1
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$OutputFlag;
    .param p2, "value"    # Z

    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 209
    :goto_0
    return-void
.end method

.method public setOutputFlags(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$OutputFlag;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 188
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method public setOutputFlags(Ljava/util/EnumSet;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/Attributes$OutputFlag;",
            ">;Z)V"
        }
    .end annotation

    .line 196
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 201
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes[lflags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/Attributes;->lflag:Ljava/util/EnumSet;

    .line 314
    invoke-direct {p0, v1}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iflags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/Attributes;->iflag:Ljava/util/EnumSet;

    .line 315
    invoke-direct {p0, v1}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oflags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/Attributes;->oflag:Ljava/util/EnumSet;

    .line 316
    invoke-direct {p0, v1}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cflags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/Attributes;->cflag:Ljava/util/EnumSet;

    .line 317
    invoke-direct {p0, v1}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cchars: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/jline/terminal/Attributes$ControlChar;

    .line 318
    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v2, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/jline/terminal/Attributes$$ExternalSyntheticLambda1;-><init>(Lorg/jline/terminal/Attributes;)V

    invoke-direct {p0, v1, v2}, Lorg/jline/terminal/Attributes;->append(Ljava/util/EnumSet;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    return-object v0
.end method
