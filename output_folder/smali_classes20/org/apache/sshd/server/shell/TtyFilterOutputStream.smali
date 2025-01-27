.class public Lorg/apache/sshd/server/shell/TtyFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TtyFilterOutputStream.java"


# static fields
.field public static final OUTPUT_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final echo:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

.field private final ttyOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->INLCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->IGNCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 42
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->OUTPUT_OPTIONS:Ljava/util/Set;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/sshd/server/shell/TtyFilterInputStream;Ljava/util/Collection;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "echo"    # Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/apache/sshd/server/shell/TtyFilterInputStream;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p3, "ttyOptions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/PtyMode;>;"
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->of(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    .line 55
    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No echo stream"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->echo:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/sshd/server/shell/TtyFilterInputStream;Ljava/util/Map;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "echo"    # Lorg/apache/sshd/server/shell/TtyFilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/apache/sshd/server/shell/TtyFilterInputStream;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "*>;)V"
        }
    .end annotation

    .line 48
    .local p3, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;*>;"
    sget-object v0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->OUTPUT_OPTIONS:Ljava/util/Set;

    invoke-static {p3, v0}, Lorg/apache/sshd/common/channel/PtyMode;->resolveEnabledOptions(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/sshd/server/shell/TtyFilterInputStream;Ljava/util/Collection;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected handleCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->IGNCR:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    return-void

    .line 76
    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput(I)V

    .line 78
    :goto_0
    return-void
.end method

.method protected handleLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->INLCR:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput(I)V

    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput(I)V

    .line 86
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->handleCR()V

    goto :goto_0

    .line 62
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->handleLF()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput(I)V

    .line 67
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 98
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->write(I)V

    .line 99
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "lastPos":I
    add-int v1, p2, p3

    .line 104
    .local v1, "maxPos":I
    move v2, p2

    .local v2, "curPos":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 105
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 106
    .local v3, "c":I
    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 107
    :cond_1
    if-ge v0, v2, :cond_2

    .line 108
    sub-int v4, v2, v0

    invoke-virtual {p0, p1, v0, v4}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput([BII)V

    .line 111
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 112
    invoke-virtual {p0, v3}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->write(I)V

    .line 104
    .end local v3    # "c":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "curPos":I
    :cond_4
    if-ge v0, v1, :cond_5

    .line 117
    sub-int v2, v1, v0

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->writeRawOutput([BII)V

    .line 119
    :cond_5
    return-void
.end method

.method protected writeRawOutput(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->echo:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->write(I)V

    .line 93
    :cond_0
    return-void
.end method

.method protected writeRawOutput([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->ttyOptions:Ljava/util/Set;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/sshd/server/shell/TtyFilterOutputStream;->echo:Lorg/apache/sshd/server/shell/TtyFilterInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sshd/server/shell/TtyFilterInputStream;->write([BII)V

    .line 126
    :cond_0
    return-void
.end method
