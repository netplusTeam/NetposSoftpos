.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "MqttConnect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# instance fields
.field private final cleanStart:Z

.field private final enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

.field private final keepAlive:I

.field private final restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

.field private final sessionExpiryInterval:J

.field private final simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

.field private final willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 44
    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    sget-object v5, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    sget-object v9, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    sput-object v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-void
.end method

.method public constructor <init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p1, "keepAlive"    # I
    .param p2, "cleanStart"    # Z
    .param p3, "sessionExpiryInterval"    # J
    .param p5, "restrictions"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    .param p6, "simpleAuth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .param p7, "enhancedAuthMechanism"    # Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .param p8, "willPublish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .param p9, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 66
    invoke-direct {p0, p9}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 67
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    .line 68
    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    .line 69
    iput-wide p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    .line 70
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 71
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 72
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 73
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 74
    return-void
.end method


# virtual methods
.method public createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .locals 1
    .param p1, "clientIdentifier"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .param p2, "enhancedAuth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    .line 148
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 169
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 170
    return v0

    .line 172
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 173
    return v2

    .line 175
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 177
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    iget-wide v5, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 178
    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 179
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 180
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 181
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 177
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;
    .locals 1

    .line 125
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->extend()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedAuthMechanism()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    return v0
.end method

.method public getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    return-object v0
.end method

.method public getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-object v0
.end method

.method public getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    return-object v0
.end method

.method public getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    return-object v0
.end method

.method public bridge synthetic getRestrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public getSessionExpiryInterval()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public getSimpleAuth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWillPublish()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->partialHashCode()I

    move-result v0

    .line 187
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    add-int/2addr v1, v2

    .line 188
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 190
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 191
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 192
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isCleanStart()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    return v0
.end method

.method public setDefaults(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 16
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 129
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v1

    .line 130
    .local v1, "connectDefaults":Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    .line 131
    .local v2, "defaultSimpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v3

    .line 132
    .local v3, "defaultEnhancedAuthMechanism":Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v4

    .line 134
    .local v4, "defaultWillPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v2, :cond_0

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    if-eqz v5, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v4, :cond_6

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    if-eqz v5, :cond_2

    goto :goto_3

    .line 139
    :cond_2
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget v7, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    iget-boolean v8, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    iget-wide v9, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    iget-object v11, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    if-nez v6, :cond_3

    move-object v12, v2

    goto :goto_0

    :cond_3
    move-object v12, v6

    :goto_0
    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    if-nez v6, :cond_4

    move-object v13, v3

    goto :goto_1

    :cond_4
    move-object v13, v6

    :goto_1
    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    if-nez v6, :cond_5

    move-object v14, v4

    goto :goto_2

    :cond_5
    move-object v14, v6

    .line 142
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v15

    move-object v6, v5

    invoke-direct/range {v6 .. v15}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 139
    return-object v5

    .line 137
    :cond_6
    :goto_3
    return-object v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->keepAlive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cleanStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->cleanStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionExpiryInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->sessionExpiryInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const-string v3, ""

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", restrictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", simpleAuth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enhancedAuthMechanism="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", willPublish="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnect{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
