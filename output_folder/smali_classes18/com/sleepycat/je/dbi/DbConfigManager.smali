.class public Lcom/sleepycat/je/dbi/DbConfigManager;
.super Ljava/lang/Object;
.source "DbConfigManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PROPFILE_NAME:Ljava/lang/String; = "je.properties"


# instance fields
.field private final environmentConfig:Lcom/sleepycat/je/EnvironmentConfig;

.field protected props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->environmentConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->props:Ljava/util/Properties;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getProps(Lcom/sleepycat/je/EnvironmentMutableConfig;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->props:Ljava/util/Properties;

    .line 84
    :goto_0
    return-void
.end method

.method public static applyFileConfig(Ljava/io/File;Ljava/util/Properties;Z)V
    .locals 12
    .param p0, "envHome"    # Ljava/io/File;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "forReplication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "paramFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 442
    .local v1, "fileProps":Ljava/util/Properties;
    if-eqz p0, :cond_1

    .line 443
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    move-object v0, p0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "je.properties"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 448
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 449
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 450
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 457
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->validateProperties(Ljava/util/Properties;ZLjava/lang/String;)V

    .line 462
    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 463
    .local v2, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 465
    .local v3, "propPair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 466
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 467
    .local v7, "value":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    move v10, p2

    invoke-static/range {v5 .. v11}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v3    # "propPair":Ljava/util/Map$Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 463
    .end local v1    # "fileProps":Ljava/util/Properties;
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_2
    goto :goto_2

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred when reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, "e2":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 487
    throw v2

    .line 477
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 488
    :goto_2
    nop

    .line 489
    return-void
.end method

.method public static getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 719
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 724
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 721
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 722
    invoke-virtual {p1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public static getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x0

    .line 582
    .local v0, "isMVParam":Z
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 584
    .local v1, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-nez v1, :cond_2

    .line 587
    invoke-static {p1}, Lcom/sleepycat/je/config/ConfigParam;->multiValueParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "mvParamName":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 589
    if-eqz v1, :cond_1

    .line 594
    const/4 v0, 0x1

    .line 595
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 590
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid BDBJE environment configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    .end local v2    # "mvParamName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    nop

    .line 602
    if-eqz v0, :cond_3

    .line 603
    invoke-static {p0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 605
    :cond_3
    invoke-static {p0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 597
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Use getMultiValueValues() to retrieve Multi-Value parameter values."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/DurationConfigParam;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 743
    if-eqz p2, :cond_1

    .line 747
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 753
    :try_start_0
    invoke-static {v0}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 757
    invoke-virtual {p1}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 749
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    invoke-virtual {p1}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 744
    .end local v0    # "val":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeUnit argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I
    .locals 4
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/IntConfigParam;

    .line 674
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    invoke-virtual {p1}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 676
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    invoke-virtual {p1}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public static getLongVal(Ljava/util/Properties;Lcom/sleepycat/je/config/LongConfigParam;)J
    .locals 4
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/LongConfigParam;

    .line 701
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 707
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 710
    invoke-virtual {p1}, Lcom/sleepycat/je/config/LongConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 703
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    invoke-virtual {p1}, Lcom/sleepycat/je/config/LongConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public static getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/ConfigParam;

    .line 615
    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_0
    return-object v0
.end method

.method public static getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/ConfigParam;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 630
    invoke-virtual {p0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 634
    :cond_0
    return-object v0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 779
    if-nez p0, :cond_0

    .line 780
    const/4 v0, 0x0

    return v0

    .line 782
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/BooleanConfigParam;
    .param p2, "val"    # Z
    .param p3, "validateValue"    # Z

    .line 734
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 735
    return-void
.end method

.method public static setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requireMutability"    # Z
    .param p4, "validateValue"    # Z
    .param p5, "forReplication"    # Z
    .param p6, "verifyForReplication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    .line 514
    .local v0, "isMVParam":Z
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 515
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 517
    .local v1, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-nez v1, :cond_2

    .line 519
    invoke-static {p1}, Lcom/sleepycat/je/config/ConfigParam;->multiValueParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "mvParamName":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 521
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    const/4 v0, 0x1

    .line 528
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 523
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid BDBJE environment parameter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    .end local v2    # "mvParamName":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz p6, :cond_6

    .line 537
    if-eqz p5, :cond_4

    .line 538
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 539
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a replication parameter."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :cond_4
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 545
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a replication parameter and cannot be  set through this configuration class."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 555
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a mutable BDBJE environment configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 561
    invoke-static {p0, v1, p1, p2, p4}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 563
    :cond_9
    invoke-static {p0, v1, p2, p4}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 565
    :goto_3
    return-void
.end method

.method public static setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/DurationConfigParam;
    .param p2, "val"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "validateValue"    # Z

    .line 769
    invoke-static {p2, p3, p4}, Lcom/sleepycat/je/utilint/PropUtil;->formatDuration(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 771
    return-void
.end method

.method public static setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/IntConfigParam;
    .param p2, "val"    # I
    .param p3, "validateValue"    # Z

    .line 694
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 695
    return-void
.end method

.method public static setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/ConfigParam;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;
    .param p4, "validateValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 664
    if-eqz p4, :cond_0

    .line 665
    invoke-virtual {p1, p3}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 668
    return-void
.end method

.method public static setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "param"    # Lcom/sleepycat/je/config/ConfigParam;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "validateValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 647
    if-eqz p3, :cond_0

    .line 648
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 651
    return-void
.end method

.method public static validateProperties(Ljava/util/Properties;ZLjava/lang/String;)V
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "isRepConfigInstance"    # Z
    .param p2, "configClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 364
    .local v0, "propNames":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 368
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 370
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-nez v2, :cond_1

    .line 372
    invoke-static {v1}, Lcom/sleepycat/je/config/ConfigParam;->multiValueParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "mvParamName":Ljava/lang/String;
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 375
    if-nez v2, :cond_1

    .line 386
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 387
    const-string v4, "je.rep."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    goto :goto_0

    .line 392
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid BDBJE environment configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 403
    .end local v3    # "mvParamName":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_5

    .line 405
    if-eqz p1, :cond_3

    .line 406
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 407
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a replication parameter and cannot  be set through "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_3
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 414
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a replication parameter and cannot be set  through "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 423
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V

    .line 424
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    goto/16 :goto_0

    .line 425
    :cond_6
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;
    .locals 2
    .param p1, "configParam"    # Lcom/sleepycat/je/config/ConfigParam;

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->props:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local p1    # "configParam":Lcom/sleepycat/je/config/ConfigParam;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "configParamName"    # Ljava/lang/String;

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->props:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local p1    # "configParamName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z
    .locals 2
    .param p1, "configParam"    # Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 133
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I
    .locals 5
    .param p1, "configParam"    # Lcom/sleepycat/je/config/DurationConfigParam;

    .line 217
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, "millis":I
    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-static {v0}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 229
    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 231
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return v1
.end method

.method public getDurationNS(Lcom/sleepycat/je/config/DurationConfigParam;)J
    .locals 6
    .param p1, "configParam"    # Lcom/sleepycat/je/config/DurationConfigParam;

    .line 240
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "val":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 242
    .local v1, "nanos":J
    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-static {v0}, Lcom/sleepycat/je/utilint/PropUtil;->parseDurationNS(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 252
    goto :goto_0

    .line 245
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 254
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-wide v1
.end method

.method public getEnvironmentConfig()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->environmentConfig:Lcom/sleepycat/je/EnvironmentConfig;

    return-object v0
.end method

.method public getInt(Lcom/sleepycat/je/config/IntConfigParam;)I
    .locals 5
    .param p1, "configParam"    # Lcom/sleepycat/je/config/IntConfigParam;

    .line 170
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    .line 172
    .local v1, "intValue":I
    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 182
    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 184
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return v1
.end method

.method public getLoggingDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultDir"    # Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->FILE_LOGGING_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "traceFileDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    return-object v0

    .line 279
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getLong(Lcom/sleepycat/je/config/LongConfigParam;)J
    .locals 6
    .param p1, "configParam"    # Lcom/sleepycat/je/config/LongConfigParam;

    .line 195
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "val":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 197
    .local v1, "longValue":J
    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 206
    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 208
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-wide v1
.end method

.method public getPrefixedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 325
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->FILE_LOGGING_PREFIX:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "traceFilePrefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 331
    :cond_0
    return-object p1
.end method

.method public getShort(Lcom/sleepycat/je/config/ShortConfigParam;)S
    .locals 5
    .param p1, "configParam"    # Lcom/sleepycat/je/config/ShortConfigParam;

    .line 145
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "shortValue":S
    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 157
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 159
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return v1
.end method

.method public getStatsDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultDir"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_FILE_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "statDir":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    return-object v0

    .line 304
    :cond_0
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->FILE_LOGGING_DIRECTORY:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "traceFileDir":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    return-object v2

    .line 307
    :cond_2
    :goto_0
    return-object p1
.end method

.method public declared-synchronized isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z
    .locals 2
    .param p1, "configParam"    # Lcom/sleepycat/je/config/ConfigParam;

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbConfigManager;->props:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 104
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local p1    # "configParam":Lcom/sleepycat/je/config/ConfigParam;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
