.class public Lcom/sleepycat/je/VerifyConfigBeanInfo;
.super Lcom/sleepycat/util/ConfigBeanInfoBase;
.source "VerifyConfigBeanInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sleepycat/util/ConfigBeanInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanDescriptor()Ljava/beans/BeanDescriptor;
    .locals 1

    .line 29
    const-class v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-static {v0}, Lcom/sleepycat/je/VerifyConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 34
    const-class v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-static {v0}, Lcom/sleepycat/je/VerifyConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
