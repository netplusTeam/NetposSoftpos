.class public Lcom/sleepycat/je/SecondaryConfigBeanInfo;
.super Lcom/sleepycat/je/DatabaseConfigBeanInfo;
.source "SecondaryConfigBeanInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sleepycat/je/DatabaseConfigBeanInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanDescriptor()Ljava/beans/BeanDescriptor;
    .locals 1

    .line 27
    const-class v0, Lcom/sleepycat/je/SecondaryConfig;

    invoke-static {v0}, Lcom/sleepycat/je/SecondaryConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 32
    const-class v0, Lcom/sleepycat/je/SecondaryConfig;

    invoke-static {v0}, Lcom/sleepycat/je/SecondaryConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
