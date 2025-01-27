.class public Lcom/sleepycat/je/DiskOrderedCursorConfigBeanInfo;
.super Lcom/sleepycat/util/ConfigBeanInfoBase;
.source "DiskOrderedCursorConfigBeanInfo.java"


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
    const-class v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;

    invoke-static {v0}, Lcom/sleepycat/je/DiskOrderedCursorConfigBeanInfo;->getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 2

    .line 40
    sget-object v0, Lcom/sleepycat/je/DiskOrderedCursorConfigBeanInfo;->ignoreMethods:Ljava/util/ArrayList;

    const-string v1, "setMaxSeedTestHook"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;

    invoke-static {v0}, Lcom/sleepycat/je/DiskOrderedCursorConfigBeanInfo;->getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
