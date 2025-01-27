.class public final enum Lcom/sleepycat/je/ScanFilter$ScanResult;
.super Ljava/lang/Enum;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/ScanFilter$ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/ScanFilter$ScanResult;

.field public static final enum EXCLUDE:Lcom/sleepycat/je/ScanFilter$ScanResult;

.field public static final enum EXCLUDE_STOP:Lcom/sleepycat/je/ScanFilter$ScanResult;

.field public static final enum INCLUDE:Lcom/sleepycat/je/ScanFilter$ScanResult;

.field public static final enum INCLUDE_STOP:Lcom/sleepycat/je/ScanFilter$ScanResult;


# instance fields
.field private final include:Z

.field private final stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/sleepycat/je/ScanFilter$ScanResult;

    const-string v1, "INCLUDE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/sleepycat/je/ScanFilter$ScanResult;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sleepycat/je/ScanFilter$ScanResult;->INCLUDE:Lcom/sleepycat/je/ScanFilter$ScanResult;

    .line 35
    new-instance v1, Lcom/sleepycat/je/ScanFilter$ScanResult;

    const-string v4, "EXCLUDE"

    invoke-direct {v1, v4, v3, v2, v2}, Lcom/sleepycat/je/ScanFilter$ScanResult;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/sleepycat/je/ScanFilter$ScanResult;->EXCLUDE:Lcom/sleepycat/je/ScanFilter$ScanResult;

    .line 40
    new-instance v4, Lcom/sleepycat/je/ScanFilter$ScanResult;

    const-string v5, "INCLUDE_STOP"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v3}, Lcom/sleepycat/je/ScanFilter$ScanResult;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/sleepycat/je/ScanFilter$ScanResult;->INCLUDE_STOP:Lcom/sleepycat/je/ScanFilter$ScanResult;

    .line 46
    new-instance v5, Lcom/sleepycat/je/ScanFilter$ScanResult;

    const-string v7, "EXCLUDE_STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v3}, Lcom/sleepycat/je/ScanFilter$ScanResult;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/sleepycat/je/ScanFilter$ScanResult;->EXCLUDE_STOP:Lcom/sleepycat/je/ScanFilter$ScanResult;

    .line 24
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/ScanFilter$ScanResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/ScanFilter$ScanResult;->$VALUES:[Lcom/sleepycat/je/ScanFilter$ScanResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "include"    # Z
    .param p4, "stop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-boolean p3, p0, Lcom/sleepycat/je/ScanFilter$ScanResult;->include:Z

    .line 53
    iput-boolean p4, p0, Lcom/sleepycat/je/ScanFilter$ScanResult;->stop:Z

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/ScanFilter$ScanResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/sleepycat/je/ScanFilter$ScanResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/ScanFilter$ScanResult;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/ScanFilter$ScanResult;
    .locals 1

    .line 24
    sget-object v0, Lcom/sleepycat/je/ScanFilter$ScanResult;->$VALUES:[Lcom/sleepycat/je/ScanFilter$ScanResult;

    invoke-virtual {v0}, [Lcom/sleepycat/je/ScanFilter$ScanResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/ScanFilter$ScanResult;

    return-object v0
.end method


# virtual methods
.method public getInclude()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/sleepycat/je/ScanFilter$ScanResult;->include:Z

    return v0
.end method

.method public getStop()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/sleepycat/je/ScanFilter$ScanResult;->stop:Z

    return v0
.end method
