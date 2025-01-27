.class public interface abstract Lorg/apache/sshd/common/session/SessionHeartbeatController;
.super Ljava/lang/Object;
.source "SessionHeartbeatController.java"

# interfaces
.implements Lorg/apache/sshd/common/PropertyResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECTION_HEARTBEAT_INTERVAL:J = 0x0L

.field public static final SESSION_HEARTBEAT_INTERVAL:Ljava/lang/String; = "session-connection-heartbeat-interval"

.field public static final SESSION_HEARTBEAT_TYPE:Ljava/lang/String; = "session-connection-heartbeat-type"


# virtual methods
.method public disableSessionHeartbeat()V
    .locals 4

    .line 82
    sget-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->NONE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Lorg/apache/sshd/common/session/SessionHeartbeatController;->setSessionHeartbeat(Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;Ljava/util/concurrent/TimeUnit;J)V

    .line 83
    return-void
.end method

.method public getSessionHeartbeatInterval()J
    .locals 3

    .line 74
    const-string v0, "session-connection-heartbeat-interval"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lorg/apache/sshd/common/session/SessionHeartbeatController;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionHeartbeatType()Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .locals 4

    .line 69
    const-string v0, "session-connection-heartbeat-type"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/session/SessionHeartbeatController;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/Object;
    const-class v1, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    sget-object v2, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->VALUES:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->toEnum(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/Collection;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    return-object v1
.end method

.method public setSessionHeartbeat(Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;Ljava/util/concurrent/TimeUnit;J)V
    .locals 3
    .param p1, "type"    # Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "count"    # J

    .line 86
    const-string v0, "No heartbeat type specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string v0, "No heartbeat time unit provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const-string v0, "session-connection-heartbeat-type"

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-string v2, "session-connection-heartbeat-interval"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)Ljava/lang/Object;

    .line 90
    return-void
.end method
