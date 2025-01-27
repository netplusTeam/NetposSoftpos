.class public Lcom/sleepycat/je/rep/ReplicationConfigBeanInfo;
.super Lcom/sleepycat/je/rep/ReplicationMutableConfigBeanInfo;
.source "ReplicationConfigBeanInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicationMutableConfigBeanInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanDescriptor()Ljava/beans/BeanDescriptor;
    .locals 1

    .line 28
    const-class v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-static {v0}, Lcom/sleepycat/je/rep/ReplicationConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 33
    const-class v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-static {v0}, Lcom/sleepycat/je/rep/ReplicationConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
