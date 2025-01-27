.class public Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;
.super Lcom/sleepycat/je/jmx/JEDiagnostics;
.source "RepJEDiagnostics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sleepycat/je/jmx/JEDiagnostics;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 27
    invoke-direct {p0, p1}, Lcom/sleepycat/je/jmx/JEDiagnostics;-><init>(Lcom/sleepycat/je/Environment;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected doRegisterMBean(Lcom/sleepycat/je/Environment;)V
    .locals 3
    .param p1, "useEnv"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;->server:Ljavax/management/MBeanServer;

    new-instance v1, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;-><init>(Lcom/sleepycat/je/Environment;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;->jeName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 46
    return-void
.end method

.method protected initClassFields()V
    .locals 1

    .line 36
    const-class v0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;->currentClass:Ljava/lang/Class;

    .line 37
    const-string v0, "RepJEDiagnostics"

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;->className:Ljava/lang/String;

    .line 38
    const-string v0, "Logging Monitor on an open replicated Environment."

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEDiagnostics;->DESCRIPTION:Ljava/lang/String;

    .line 39
    return-void
.end method
