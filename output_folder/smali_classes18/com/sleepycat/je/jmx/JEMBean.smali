.class public abstract Lcom/sleepycat/je/jmx/JEMBean;
.super Ljava/lang/Object;
.source "JEMBean.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;


# static fields
.field public static final statParams:[Ljavax/management/MBeanParameterInfo;


# instance fields
.field protected DESCRIPTION:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field protected currentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected env:Lcom/sleepycat/je/Environment;

.field protected jeName:Ljavax/management/ObjectName;

.field private mbeanInfo:Ljavax/management/MBeanInfo;

.field protected operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/management/MBeanOperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected server:Ljavax/management/MBeanServer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/management/MBeanParameterInfo;

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v2, "clear"

    const-string v3, "java.lang.Boolean"

    const-string v4, "If true, reset statistics after reading."

    invoke-direct {v1, v2, v3, v4}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v2, "fast"

    const-string v4, "If true, only return statistics which do not require expensive computation."

    invoke-direct {v1, v2, v3, v4}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sleepycat/je/jmx/JEMBean;->statParams:[Ljavax/management/MBeanParameterInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->operationList:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->initClassFields()V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->operationList:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/sleepycat/je/jmx/JEMBean;->env:Lcom/sleepycat/je/Environment;

    .line 90
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->initClassFields()V

    .line 91
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->resetMBeanInfo()V

    .line 92
    return-void
.end method

.method private getOperationList()[Ljavax/management/MBeanOperationInfo;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->addOperations()V

    .line 161
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->operationList:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/management/MBeanOperationInfo;

    .line 161
    return-object v0
.end method


# virtual methods
.method protected abstract addOperations()V
.end method

.method public doRegister(Lcom/sleepycat/je/Environment;)V
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->server:Ljavax/management/MBeanServer;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.sleepycat.je.jmx:name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMBean;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    nop

    .line 187
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getHome()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "<colon>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "noColonPathname":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v2, Ljavax/management/ObjectName;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/je/jmx/JEMBean;->jeName:Ljavax/management/ObjectName;

    .line 190
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/jmx/JEMBean;->doRegisterMBean(Lcom/sleepycat/je/Environment;)V

    .line 191
    return-void
.end method

.method protected abstract doRegisterMBean(Lcom/sleepycat/je/Environment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public doUnregister()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->server:Ljavax/management/MBeanServer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMBean;->jeName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected abstract getAttributeList()[Ljavax/management/MBeanAttributeInfo;
.end method

.method protected getConstructors()[Ljavax/management/MBeanConstructorInfo;
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->currentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 142
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v1, v0

    new-array v1, v1, [Ljavax/management/MBeanConstructorInfo;

    .line 144
    .local v1, "constructorInfo":[Ljavax/management/MBeanConstructorInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 145
    new-instance v3, Ljavax/management/MBeanConstructorInfo;

    iget-object v4, p0, Lcom/sleepycat/je/jmx/JEMBean;->currentClass:Ljava/lang/Class;

    .line 146
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-direct {v3, v4, v5}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    aput-object v3, v1, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->mbeanInfo:Ljavax/management/MBeanInfo;

    return-object v0
.end method

.method protected getNotificationInfo()[Ljavax/management/MBeanNotificationInfo;
    .locals 1

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    .line 225
    .local v0, "statsConfig":Lcom/sleepycat/je/StatsConfig;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 226
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    .line 227
    .local v1, "clear":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/StatsConfig;->setClear(Z)Lcom/sleepycat/je/StatsConfig;

    .line 229
    .end local v1    # "clear":Ljava/lang/Boolean;
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    .line 230
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Boolean;

    .line 231
    .local v1, "fast":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/StatsConfig;->setFast(Z)Lcom/sleepycat/je/StatsConfig;

    .line 234
    .end local v1    # "fast":Ljava/lang/Boolean;
    :cond_1
    return-object v0
.end method

.method protected abstract initClassFields()V
.end method

.method protected resetMBeanInfo()V
    .locals 8

    .line 108
    new-instance v7, Ljavax/management/MBeanInfo;

    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBean;->currentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/jmx/JEMBean;->DESCRIPTION:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->getAttributeList()[Ljavax/management/MBeanAttributeInfo;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->getConstructors()[Ljavax/management/MBeanConstructorInfo;

    move-result-object v4

    .line 112
    invoke-direct {p0}, Lcom/sleepycat/je/jmx/JEMBean;->getOperationList()[Ljavax/management/MBeanOperationInfo;

    move-result-object v5

    .line 113
    invoke-virtual {p0}, Lcom/sleepycat/je/jmx/JEMBean;->getNotificationInfo()[Ljavax/management/MBeanNotificationInfo;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    iput-object v7, p0, Lcom/sleepycat/je/jmx/JEMBean;->mbeanInfo:Ljavax/management/MBeanInfo;

    .line 114
    return-void
.end method
