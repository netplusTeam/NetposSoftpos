.class public Lcom/sleepycat/je/rep/ReplicationMutableConfig;
.super Ljava/lang/Object;
.source "ReplicationMutableConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALLOW_ARBITER_ACK:Ljava/lang/String; = "je.rep.allowArbiterAck"

.field public static final CATCHUP_MASTER_TIMEOUT:Ljava/lang/String; = "je.rep.catchupMasterTimeout"

.field public static final DESIGNATED_PRIMARY:Ljava/lang/String; = "je.rep.designatedPrimary"

.field public static final ELECTABLE_GROUP_SIZE_OVERRIDE:Ljava/lang/String; = "je.rep.electableGroupSizeOverride"

.field public static final HELPER_HOSTS:Ljava/lang/String; = "je.rep.helperHosts"

.field public static final LOG_FLUSH_TASK_INTERVAL:Ljava/lang/String; = "je.rep.logFlushTaskInterval"

.field public static final NODE_PRIORITY:Ljava/lang/String; = "je.rep.node.priority"

.field public static final REPLAY_DB_HANDLE_TIMEOUT:Ljava/lang/String; = "je.rep.replayOpenHandleTimeout"

.field public static final REPLAY_MAX_OPEN_DB_HANDLES:Ljava/lang/String; = "je.rep.replayMaxOpenDbHandles"

.field public static final RUN_LOG_FLUSH_TASK:Ljava/lang/String; = "je.rep.runLogFlushTask"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected props:Ljava/util/Properties;

.field transient validateParams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    nop

    .line 377
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 378
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 395
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    .line 396
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Z)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "validateParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 405
    iput-boolean p2, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 406
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateProperties(Ljava/util/Properties;)V

    .line 408
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    .line 409
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 410
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 717
    nop

    .line 718
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 719
    .local v0, "copy":Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    .line 720
    return-object v0
.end method

.method public copyMutablePropsTo(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 5
    .param p1, "toConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 429
    iget-object v0, p1, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    .line 430
    .local v0, "toProps":Ljava/util/Properties;
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 431
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 433
    .local v2, "paramName":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 434
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/config/ConfigParam;

    .line 435
    .local v3, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v3, :cond_1

    .line 436
    invoke-virtual {v3}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    invoke-virtual {v3}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "newVal":Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    .end local v4    # "newVal":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 435
    .restart local v2    # "paramName":Ljava/lang/String;
    .restart local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 442
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_2
    return-void
.end method

.method fillInEnvironmentGeneratedProps(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 3
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 417
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->isDesignatedPrimary()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->getNodePriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    return-void
.end method

.method public getConfigParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesignatedPrimary()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    return v0
.end method

.method public getElectableGroupSizeOverride()I
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTABLE_GROUP_SIZE_OVERRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 495
    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 494
    return v0
.end method

.method public getHelperHosts()Ljava/lang/String;
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodePriority()I
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getProps()Ljava/util/Properties;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getValidateParams()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    return v0
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 7
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    iget-boolean v4, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 633
    return-object p0
.end method

.method public setDesignatedPrimary(Z)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 0
    .param p1, "isPrimary"    # Z

    .line 459
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setDesignatedPrimaryVoid(Z)V

    .line 460
    return-object p0
.end method

.method public setDesignatedPrimaryVoid(Z)V
    .locals 3
    .param p1, "isPrimary"    # Z

    .line 468
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DESIGNATED_PRIMARY:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 470
    return-void
.end method

.method public setElectableGroupSizeOverride(I)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 0
    .param p1, "override"    # I

    .line 512
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setElectableGroupSizeOverrideVoid(I)V

    .line 513
    return-object p0
.end method

.method public setElectableGroupSizeOverrideVoid(I)V
    .locals 3
    .param p1, "override"    # I

    .line 522
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTABLE_GROUP_SIZE_OVERRIDE:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 523
    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 525
    return-void
.end method

.method public setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 0
    .param p1, "hostsAndPorts"    # Ljava/lang/String;

    .line 597
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setHelperHostsVoid(Ljava/lang/String;)V

    .line 598
    return-object p0
.end method

.method public setHelperHostsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostsAndPorts"    # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 607
    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method public setNodePriority(I)Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 0
    .param p1, "priority"    # I

    .line 556
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setNodePriorityVoid(I)V

    .line 557
    return-object p0
.end method

.method public setNodePriorityVoid(I)V
    .locals 3
    .param p1, "priority"    # I

    .line 565
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_PRIORITY:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 567
    return-void
.end method

.method setOverrideValidateParams(Z)V
    .locals 0
    .param p1, "validateParams"    # Z

    .line 696
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    .line 697
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validateProperties(Ljava/util/Properties;)V
    .locals 6
    .param p1, "checkProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 657
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 658
    .local v0, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 661
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 662
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 663
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v2, :cond_1

    .line 668
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->validateParams:Z

    if-eqz v3, :cond_0

    .line 669
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V

    .line 671
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_0
    goto :goto_0

    .line 664
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid JE environment configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_2
    return-void
.end method
