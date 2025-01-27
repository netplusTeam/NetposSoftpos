.class public Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;
.super Ljava/lang/Object;
.source "DefaultSpdySettingsFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdySettingsFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    }
.end annotation


# instance fields
.field private clear:Z

.field private final settingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    return-void
.end method

.method private appendSettings(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->getSettings()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 124
    .local v2, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    const-string v3, "--> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, " (persist value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "; persisted: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;>;"
    .end local v2    # "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private getSettings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearPreviouslyPersistedSettings()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    return v0
.end method

.method public getValue(I)I
    .locals 2
    .param p1, "id"    # I

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 45
    .local v0, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public ids()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isPersistValue(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 79
    .local v0, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPersisted(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 93
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 94
    .local v0, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSet(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 39
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeValue(I)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 2
    .param p1, "id"    # I

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public setClearPreviouslyPersistedSettings(Z)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 0
    .param p1, "clear"    # Z

    .line 113
    iput-boolean p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    .line 114
    return-object p0
.end method

.method public setPersistValue(IZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 2
    .param p1, "id"    # I
    .param p2, "persistValue"    # Z

    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 85
    .local v0, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    .line 88
    :cond_0
    return-object p0
.end method

.method public setPersisted(IZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 2
    .param p1, "id"    # I
    .param p2, "persisted"    # Z

    .line 99
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 100
    .local v0, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    .line 103
    :cond_0
    return-object p0
.end method

.method public setValue(II)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->setValue(IIZZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    move-result-object v0

    return-object v0
.end method

.method public setValue(IIZZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # I
    .param p3, "persistValue"    # Z
    .param p4, "persisted"    # Z

    .line 55
    if-ltz p1, :cond_1

    const v0, 0xffffff

    if-gt p1, v0, :cond_1

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 60
    .local v1, "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setValue(I)V

    .line 62
    invoke-virtual {v1, p3}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    .line 63
    invoke-virtual {v1, p4}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    new-instance v3, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-direct {v3, p2, p3, p4}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;-><init>(IZZ)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    return-object p0

    .line 56
    .end local v0    # "key":Ljava/lang/Integer;
    .end local v1    # "setting":Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ID is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->appendSettings(Ljava/lang/StringBuilder;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
