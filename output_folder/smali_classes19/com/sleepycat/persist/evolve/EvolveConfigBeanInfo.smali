.class public Lcom/sleepycat/persist/evolve/EvolveConfigBeanInfo;
.super Lcom/sleepycat/util/ConfigBeanInfoBase;
.source "EvolveConfigBeanInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sleepycat/util/ConfigBeanInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanDescriptor()Ljava/beans/BeanDescriptor;
    .locals 1

    .line 25
    const-class v0, Lcom/sleepycat/persist/evolve/EvolveConfig;

    invoke-static {v0}, Lcom/sleepycat/persist/evolve/EvolveConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 30
    const-class v0, Lcom/sleepycat/persist/evolve/EvolveConfig;

    invoke-static {v0}, Lcom/sleepycat/persist/evolve/EvolveConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
