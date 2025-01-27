.class public Lorg/jpos/q2/cli/deploy/PS;
.super Ljava/lang/Object;
.source "PS.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 9
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "Q2:type=qbean,service=*"

    invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "on":Ljavax/management/ObjectName;
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    .line 42
    .local v1, "server":Ljavax/management/MBeanServer;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljavax/management/MBeanServer;->queryMBeans(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v2

    .line 43
    .local v2, "b":Ljava/util/Set;, "Ljava/util/Set<Ljavax/management/ObjectInstance;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 44
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/management/ObjectInstance;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/management/ObjectInstance;

    .line 46
    .local v4, "instance":Ljavax/management/ObjectInstance;
    invoke-virtual {v4}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v5

    const-string v6, "State"

    invoke-interface {v1, v5, v6}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 47
    .local v5, "status":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Ljavax/management/ObjectName;->getKeyProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljavax/management/ObjectInstance;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 51
    .end local v4    # "instance":Ljavax/management/ObjectInstance;
    .end local v5    # "status":I
    :cond_0
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
