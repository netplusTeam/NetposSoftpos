.class public Lorg/apache/sshd/common/channel/PtyChannelConfiguration;
.super Ljava/lang/Object;
.source "PtyChannelConfiguration.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;


# instance fields
.field private ptyColumns:I

.field private ptyHeight:I

.field private ptyLines:I

.field private ptyModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ptyType:Ljava/lang/String;

.field private ptyWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyColumns:I

    .line 31
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyLines:I

    .line 32
    const/16 v0, 0x280

    iput v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyWidth:I

    .line 33
    const/16 v0, 0x1e0

    iput v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyHeight:I

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyModes:Ljava/util/Map;

    .line 37
    sget-object v1, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->DEFAULT_PTY_MODES:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getPtyColumns()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyColumns:I

    return v0
.end method

.method public getPtyHeight()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyHeight:I

    return v0
.end method

.method public getPtyLines()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyLines:I

    return v0
.end method

.method public getPtyModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyModes:Ljava/util/Map;

    return-object v0
.end method

.method public getPtyType()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPtyWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyWidth:I

    return v0
.end method

.method public setPtyColumns(I)V
    .locals 0
    .param p1, "ptyColumns"    # I

    .line 57
    iput p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyColumns:I

    .line 58
    return-void
.end method

.method public setPtyHeight(I)V
    .locals 0
    .param p1, "ptyHeight"    # I

    .line 87
    iput p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyHeight:I

    .line 88
    return-void
.end method

.method public setPtyLines(I)V
    .locals 0
    .param p1, "ptyLines"    # I

    .line 67
    iput p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyLines:I

    .line 68
    return-void
.end method

.method public setPtyModes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "ptyModes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyModes:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public setPtyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "ptyType"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPtyWidth(I)V
    .locals 0
    .param p1, "ptyWidth"    # I

    .line 77
    iput p1, p0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->ptyWidth:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyLines()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyModes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method
