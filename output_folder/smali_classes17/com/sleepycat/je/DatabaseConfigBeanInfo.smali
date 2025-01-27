.class public Lcom/sleepycat/je/DatabaseConfigBeanInfo;
.super Lcom/sleepycat/util/ConfigBeanInfoBase;
.source "DatabaseConfigBeanInfo.java"


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

    .line 28
    const-class v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-static {v0}, Lcom/sleepycat/je/DatabaseConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 33
    const-class v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-static {v0}, Lcom/sleepycat/je/DatabaseConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
