.class public Lorg/jpos/q2/cli/deploy/SERVICE;
.super Ljava/lang/Object;
.source "SERVICE.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 18
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v0, v2

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 43
    const-string v0, "Usage: service <service> start|stop|restart"

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x2

    aget-object v3, v2, v0

    const-string v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "restart"

    const-string v6, "stop"

    if-nez v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 48
    return-void

    .line 50
    :cond_1
    const-string v3, ""

    .line 51
    .local v3, "command":Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, "waiting":I
    const/4 v8, 0x0

    .line 54
    .local v8, "executed":I
    aget-object v9, v2, v0

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v10, v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :sswitch_2
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v10, v12

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 66
    :pswitch_0
    aput-object v6, v2, v0

    .line 67
    invoke-virtual/range {p0 .. p2}, Lorg/jpos/q2/cli/deploy/SERVICE;->exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V

    .line 68
    aput-object v4, v2, v0

    .line 69
    invoke-virtual/range {p0 .. p2}, Lorg/jpos/q2/cli/deploy/SERVICE;->exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V

    .line 70
    return-void

    .line 61
    :pswitch_1
    const-string v3, "stop"

    .line 62
    const/4 v7, 0x1

    .line 63
    const/4 v8, 0x0

    .line 64
    goto :goto_1

    .line 56
    :pswitch_2
    const-string v3, "start"

    .line 57
    const/4 v7, 0x2

    .line 58
    const/4 v8, 0x3

    .line 59
    nop

    .line 73
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v4

    .line 75
    .local v4, "server":Ljavax/management/MBeanServer;
    new-instance v5, Ljavax/management/ObjectName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Q2:type=qbean,service="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v2, v12

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 76
    .local v5, "on":Ljavax/management/ObjectName;
    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljavax/management/MBeanServer;->queryMBeans(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v9

    .line 77
    .local v9, "b":Ljava/util/Set;, "Ljava/util/Set<Ljavax/management/ObjectInstance;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 78
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/management/ObjectInstance;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 79
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/management/ObjectInstance;

    .line 80
    .local v11, "instance":Ljavax/management/ObjectInstance;
    invoke-virtual {v11}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v13

    const-string v14, "State"

    invoke-interface {v4, v13, v14}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v15, ": "

    if-ne v13, v8, :cond_3

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v2, v12

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " already done."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 82
    return-void

    .line 85
    :cond_3
    invoke-virtual {v11}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v13

    invoke-interface {v4, v13, v3, v6, v6}, Ljavax/management/MBeanServer;->invoke(Ljavax/management/ObjectName;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/16 v13, 0x64

    if-ge v6, v13, :cond_5

    .line 88
    :try_start_0
    invoke-virtual {v11}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v13

    invoke-interface {v4, v13, v14}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v8, :cond_4

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v13, v2, v12

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " done"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 90
    return-void

    .line 92
    :cond_4
    const-wide/16 v16, 0x7d0

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "waiting for "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v13, v2, v12

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " to "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v13, 0x2

    aget-object v12, v2, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x2

    const/4 v12, 0x1

    goto :goto_2

    .line 95
    .end local v6    # "i":I
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v12, v2, v6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is stuck in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " state"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t get state: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 104
    .end local v11    # "instance":Ljavax/management/ObjectInstance;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v12

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " not found"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 107
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x360802 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x416a9e0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
