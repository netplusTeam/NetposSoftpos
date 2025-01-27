.class public Lcom/sleepycat/je/EnvironmentConfigBeanInfo;
.super Lcom/sleepycat/je/EnvironmentMutableConfigBeanInfo;
.source "EnvironmentConfigBeanInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sleepycat/je/EnvironmentMutableConfigBeanInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanDescriptor()Ljava/beans/BeanDescriptor;
    .locals 1

    .line 28
    const-class v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 33
    const-class v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
