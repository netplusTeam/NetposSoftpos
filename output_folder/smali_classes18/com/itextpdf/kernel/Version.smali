.class public final Lcom/itextpdf/kernel/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final AGPL:Ljava/lang/String; = " (AGPL-version)"

.field private static final iTextProductName:Ljava/lang/String; = "iText\u00ae"

.field private static final producerLine:Ljava/lang/String; = "iText\u00ae 7.1.15 \u00a92000-2021 iText Group NV"

.field private static final release:Ljava/lang/String; = "7.1.15"

.field private static final staticLock:Ljava/lang/Object;

.field private static volatile version:Lcom/itextpdf/kernel/Version;


# instance fields
.field private expired:Z

.field private final info:Lcom/itextpdf/kernel/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/Version;->staticLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/VersionInfo;

    const-string v1, "iText\u00ae"

    const-string v2, "7.1.15"

    const-string v3, "iText\u00ae 7.1.15 \u00a92000-2021 iText Group NV"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/VersionInfo;Z)V
    .locals 0
    .param p1, "info"    # Lcom/itextpdf/kernel/VersionInfo;
    .param p2, "expired"    # Z

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    .line 107
    iput-boolean p2, p0, Lcom/itextpdf/kernel/Version;->expired:Z

    .line 108
    return-void
.end method

.method private static atomicSetVersion(Lcom/itextpdf/kernel/Version;)Lcom/itextpdf/kernel/Version;
    .locals 2
    .param p0, "newVersion"    # Lcom/itextpdf/kernel/Version;

    .line 383
    sget-object v0, Lcom/itextpdf/kernel/Version;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    sput-object p0, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;

    .line 385
    sget-object v1, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;

    monitor-exit v0

    return-object v1

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkLicenseVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "coreVersionString"    # Ljava/lang/String;
    .param p1, "licenseVersionString"    # Ljava/lang/String;

    .line 334
    invoke-static {p0}, Lcom/itextpdf/kernel/Version;->parseVersionString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "coreVersions":[Ljava/lang/String;
    invoke-static {p1}, Lcom/itextpdf/kernel/Version;->parseVersionString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "licenseVersions":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 338
    .local v3, "coreMajor":I
    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 340
    .local v5, "coreMinor":I
    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 341
    .local v6, "licenseMajor":I
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 343
    .local v7, "licenseMinor":I
    const/4 v8, 0x2

    if-lt v6, v3, :cond_2

    .line 346
    if-gt v6, v3, :cond_1

    .line 351
    if-lt v7, v5, :cond_0

    .line 355
    return-void

    .line 352
    :cond_0
    new-instance v9, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v10, "The minor version of the license ({0}) is lower than the minor version ({1}) of the Core library."

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/LicenseVersionException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/LicenseVersionException;

    move-result-object v2

    throw v2

    .line 347
    :cond_1
    new-instance v9, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v10, "The major version of the license ({0}) is higher than the major version ({1}) of the Core library."

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/LicenseVersionException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/LicenseVersionException;

    move-result-object v2

    throw v2

    .line 344
    :cond_2
    new-instance v9, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v10, "The major version of the license ({0}) is lower than the major version ({1}) of the Core library."

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/LicenseVersionException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/LicenseVersionException;

    move-result-object v2

    throw v2
.end method

.method private static getClassFromLicenseKey(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "classFullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 330
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/itextpdf/kernel/Version;
    .locals 7

    .line 118
    sget-object v0, Lcom/itextpdf/kernel/Version;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    :try_start_1
    invoke-static {}, Lcom/itextpdf/kernel/Version;->licenseScheduledCheck()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/Version;->initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/Version;->atomicSetVersion(Lcom/itextpdf/kernel/Version;)Lcom/itextpdf/kernel/Version;

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;

    monitor-exit v0

    return-object v1

    .line 131
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "key":Ljava/lang/String;
    :try_start_3
    const-string v1, "7.1.15"

    .line 136
    .local v1, "coreVersion":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/kernel/Version;->getLicenseeInfoFromLicenseKey(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "info":[Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 138
    const/4 v4, 0x3

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 139
    aget-object v4, v3, v4

    move-object v0, v4

    goto :goto_1

    .line 141
    :cond_1
    const-string v4, "Trial version "

    move-object v0, v4

    .line 142
    const/4 v4, 0x5

    aget-object v5, v3, v4

    if-nez v5, :cond_2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "unauthorised"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 145
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v3, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 149
    :goto_1
    array-length v4, v3

    const/4 v5, 0x6

    if-le v4, v5, :cond_3

    .line 150
    aget-object v4, v3, v5

    if-eqz v4, :cond_3

    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 152
    aget-object v4, v3, v5

    invoke-static {v1, v4}, Lcom/itextpdf/kernel/Version;->checkLicenseVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_3
    const/4 v4, 0x4

    aget-object v5, v3, v4

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 157
    aget-object v4, v3, v4

    invoke-static {v4, v0, v6}, Lcom/itextpdf/kernel/Version;->initVersion(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .local v2, "localVersion":Lcom/itextpdf/kernel/Version;
    goto/16 :goto_3

    .line 158
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :cond_4
    const/4 v4, 0x2

    aget-object v5, v3, v4

    if-eqz v5, :cond_5

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 159
    aget-object v4, v3, v4

    invoke-static {v4, v0}, Lcom/itextpdf/kernel/Version;->initDefaultLicensedVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    goto :goto_3

    .line 160
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :cond_5
    aget-object v4, v3, v6

    if-eqz v4, :cond_6

    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 164
    aget-object v4, v3, v6

    invoke-static {v4, v0}, Lcom/itextpdf/kernel/Version;->initDefaultLicensedVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    goto :goto_3

    .line 166
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :cond_6
    invoke-static {v2, v0}, Lcom/itextpdf/kernel/Version;->initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    goto :goto_3

    .line 169
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :cond_7
    invoke-static {v2, v0}, Lcom/itextpdf/kernel/Version;->initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2
    :try_end_3
    .catch Lcom/itextpdf/kernel/LicenseVersionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    goto :goto_3

    .line 178
    .end local v1    # "coreVersion":Ljava/lang/String;
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    .end local v3    # "info":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "License file not loaded."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 181
    invoke-static {}, Lcom/itextpdf/kernel/Version;->isiText5licenseLoaded()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    .line 182
    :cond_8
    new-instance v2, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v3, "No iText7 License is loaded but an iText5 license is loaded."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_9
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itextpdf/kernel/Version;->initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    goto :goto_4

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :catch_2
    move-exception v1

    .line 177
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {v2, v0}, Lcom/itextpdf/kernel/Version;->initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    .line 186
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :goto_3
    nop

    .line 187
    :goto_4
    invoke-static {v2}, Lcom/itextpdf/kernel/Version;->atomicSetVersion(Lcom/itextpdf/kernel/Version;)Lcom/itextpdf/kernel/Version;

    move-result-object v1

    return-object v1

    .line 172
    .end local v2    # "localVersion":Lcom/itextpdf/kernel/Version;
    :catch_3
    move-exception v1

    .line 174
    .local v1, "lve":Lcom/itextpdf/kernel/LicenseVersionException;
    throw v1

    .line 131
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "lve":Lcom/itextpdf/kernel/LicenseVersionException;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private static getLicenseKeyClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 325
    const-string v0, "com.itextpdf.licensekey.LicenseKey"

    .line 326
    .local v0, "licenseKeyClassFullName":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/kernel/Version;->getClassFromLicenseKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private static getLicenseeInfoFromLicenseKey(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "validatorKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 358
    const-string v0, "getLicenseeInfoForVersion"

    .line 359
    .local v0, "licenseeInfoMethodName":Ljava/lang/String;
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getLicenseKeyClass()Ljava/lang/Class;

    move-result-object v1

    .line 360
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 361
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 362
    .local v3, "cArg":[Ljava/lang/Class;
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 363
    .local v4, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 364
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    .line 365
    .local v5, "info":[Ljava/lang/String;
    return-object v5

    .line 367
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "cArg":[Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "info":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static initAGPLVersion(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;
    .locals 3
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "key"    # Ljava/lang/String;

    .line 313
    const-string v0, "iText\u00ae 7.1.15 \u00a92000-2021 iText Group NV (AGPL-version)"

    .line 315
    .local v0, "producer":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 317
    .local v1, "expired":Z
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/itextpdf/kernel/Version;->initVersion(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/Version;

    move-result-object v2

    return-object v2
.end method

.method private static initDefaultLicensedVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/Version;
    .locals 3
    .param p0, "ownerName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iText\u00ae 7.1.15 \u00a92000-2021 iText Group NV ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "producer":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; licensed version)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/itextpdf/kernel/Version;->initVersion(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/Version;

    move-result-object v1

    return-object v1
.end method

.method private static initVersion(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/Version;
    .locals 4
    .param p0, "producer"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expired"    # Z

    .line 321
    new-instance v0, Lcom/itextpdf/kernel/Version;

    new-instance v1, Lcom/itextpdf/kernel/VersionInfo;

    const-string v2, "iText\u00ae"

    const-string v3, "7.1.15"

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/itextpdf/kernel/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/itextpdf/kernel/Version;-><init>(Lcom/itextpdf/kernel/VersionInfo;Z)V

    return-object v0
.end method

.method public static isAGPLVersion()Z
    .locals 1

    .line 195
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/Version;->isAGPL()Z

    move-result v0

    return v0
.end method

.method public static isExpired()Z
    .locals 1

    .line 203
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itextpdf/kernel/Version;->expired:Z

    return v0
.end method

.method static isVersionNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "version"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "value":I
    if-ltz v1, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 288
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private static isiText5licenseLoaded()Z
    .locals 3

    .line 371
    const-string v0, "5"

    .line 372
    .local v0, "validatorKey5":Ljava/lang/String;
    const/4 v1, 0x0

    .line 374
    .local v1, "result":Z
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/Version;->getLicenseeInfoFromLicenseKey(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .local v2, "info":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 378
    .end local v2    # "info":[Ljava/lang/String;
    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 379
    :goto_0
    return v1
.end method

.method private static licenseScheduledCheck()V
    .locals 9

    .line 390
    sget-object v0, Lcom/itextpdf/kernel/Version;->version:Lcom/itextpdf/kernel/Version;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/Version;->isAGPL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    const-string v0, "com.itextpdf.licensekey.LicenseKeyProduct"

    .line 395
    .local v0, "licenseKeyProductFullName":Ljava/lang/String;
    const-string/jumbo v1, "scheduledCheck"

    .line 397
    .local v1, "checkLicenseKeyMethodName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getLicenseKeyClass()Ljava/lang/Class;

    move-result-object v2

    .line 398
    .local v2, "licenseKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/itextpdf/kernel/Version;->getClassFromLicenseKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 400
    .local v3, "licenseKeyProductClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 401
    .local v5, "cArg":[Ljava/lang/Class;
    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 402
    .local v7, "method":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v8, v4, v6

    invoke-virtual {v7, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    .line 406
    .end local v2    # "licenseKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "licenseKeyProductClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "cArg":[Ljava/lang/Class;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static parseVersionString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "version"    # Ljava/lang/String;

    .line 259
    const-string v0, "\\."

    .line 260
    .local v0, "splitRegex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 267
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 269
    .local v3, "major":Ljava/lang/String;
    const-string v4, "0"

    .line 270
    .local v4, "minor":Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 271
    aget-object v5, v1, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_0
    invoke-static {v3}, Lcom/itextpdf/kernel/Version;->isVersionNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    invoke-static {v4}, Lcom/itextpdf/kernel/Version;->isVersionNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    aput-object v4, v5, v6

    return-object v5

    .line 278
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v5, "Minor version is not numeric"

    invoke-direct {v2, v5}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_2
    new-instance v2, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v5, "Major version is not numeric"

    invoke-direct {v2, v5}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v3    # "major":Ljava/lang/String;
    .end local v4    # "minor":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/itextpdf/kernel/LicenseVersionException;

    const-string v3, "Version string is empty and cannot be parsed."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getInfo()Lcom/itextpdf/kernel/VersionInfo;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/itextpdf/kernel/Version;->info:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isAGPL()Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/itextpdf/kernel/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, " (AGPL-version)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
