.class public abstract Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
.super Ljava/lang/Object;
.source "MqttConnectBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cleanStart:Z

.field private enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

.field private keepAlive:I

.field private restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

.field private sessionExpiryInterval:J

.field private simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

.field private willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 53
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    .line 47
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 51
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 55
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    .line 47
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 51
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 56
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    .line 57
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart:Z

    .line 58
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    .line 59
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 60
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 61
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 62
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 63
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 64
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 11

    .line 136
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart:Z

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v10
.end method

.method public cleanStart(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1
    .param p1, "cleanStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart:Z

    .line 80
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1
    .param p1, "enhancedAuthMechanism"    # Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ")TB;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 113
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keepAlive(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1
    .param p1, "keepAlive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const-string v0, "Keep alive"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    .line 70
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public noKeepAlive()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive:I

    .line 75
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    .line 90
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 2
    .param p1, "restrictions"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;",
            ")TB;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const-string v1, "Connect restrictions"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 95
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public restrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Ljava/util/function/Function;)V

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 2
    .param p1, "sessionExpiryInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const-string v0, "Session expiry interval"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedInt(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval:J

    .line 85
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 2
    .param p1, "simpleAuth"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ")TB;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const-string v1, "Simple auth"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 104
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 128
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 2
    .param p1, "willPublish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ")TB;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 118
    const-string v1, "Will publish"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 119
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    return-object v0
.end method

.method public willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested<",
            "TB;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method
