.class public Lorg/jpos/q2/Q2$QEntry;
.super Ljava/lang/Object;
.source "Q2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/Q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QEntry"
.end annotation


# instance fields
.field deployed:J

.field instance:Ljavax/management/ObjectInstance;

.field obj:Ljava/lang/Object;

.field osgiBundle:Z


# direct methods
.method public constructor <init>(JLjavax/management/ObjectInstance;)V
    .locals 0
    .param p1, "deployed"    # J
    .param p3, "instance"    # Ljavax/management/ObjectInstance;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-wide p1, p0, Lorg/jpos/q2/Q2$QEntry;->deployed:J

    .line 1058
    iput-object p3, p0, Lorg/jpos/q2/Q2$QEntry;->instance:Ljavax/management/ObjectInstance;

    .line 1059
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "osgiBundle"    # Z

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-boolean p1, p0, Lorg/jpos/q2/Q2$QEntry;->osgiBundle:Z

    .line 1054
    return-void
.end method


# virtual methods
.method public getDeployed()J
    .locals 2

    .line 1061
    iget-wide v0, p0, Lorg/jpos/q2/Q2$QEntry;->deployed:J

    return-wide v0
.end method

.method public getInstance()Ljavax/management/ObjectInstance;
    .locals 1

    .line 1070
    iget-object v0, p0, Lorg/jpos/q2/Q2$QEntry;->instance:Ljavax/management/ObjectInstance;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1079
    iget-object v0, p0, Lorg/jpos/q2/Q2$QEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 1073
    iget-object v0, p0, Lorg/jpos/q2/Q2$QEntry;->instance:Ljavax/management/ObjectInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isOSGIBundle()Z
    .locals 1

    .line 1085
    iget-boolean v0, p0, Lorg/jpos/q2/Q2$QEntry;->osgiBundle:Z

    return v0
.end method

.method public isQBean()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lorg/jpos/q2/Q2$QEntry;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jpos/q2/QBean;

    return v0
.end method

.method public isQPersist()Z
    .locals 1

    .line 1088
    iget-object v0, p0, Lorg/jpos/q2/Q2$QEntry;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jpos/q2/QPersist;

    return v0
.end method

.method public setDeployed(J)V
    .locals 0
    .param p1, "deployed"    # J

    .line 1064
    iput-wide p1, p0, Lorg/jpos/q2/Q2$QEntry;->deployed:J

    .line 1065
    return-void
.end method

.method public setInstance(Ljavax/management/ObjectInstance;)V
    .locals 0
    .param p1, "instance"    # Ljavax/management/ObjectInstance;

    .line 1067
    iput-object p1, p0, Lorg/jpos/q2/Q2$QEntry;->instance:Ljavax/management/ObjectInstance;

    .line 1068
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1076
    iput-object p1, p0, Lorg/jpos/q2/Q2$QEntry;->obj:Ljava/lang/Object;

    .line 1077
    return-void
.end method
