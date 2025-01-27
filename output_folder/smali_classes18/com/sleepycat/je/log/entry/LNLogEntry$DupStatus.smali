.class final enum Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;
.super Ljava/lang/Enum;
.source "LNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/entry/LNLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DupStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

.field public static final enum DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

.field public static final enum NEED_CONVERSION:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

.field public static final enum NOT_DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

.field public static final enum UNKNOWN:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 340
    new-instance v0, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->UNKNOWN:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    new-instance v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    const-string v3, "NEED_CONVERSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NEED_CONVERSION:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    new-instance v3, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    const-string v5, "DUP_DB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    new-instance v5, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    const-string v7, "NOT_DUP_DB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->NOT_DUP_DB:Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->$VALUES:[Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 340
    const-class v0, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;
    .locals 1

    .line 340
    sget-object v0, Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->$VALUES:[Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/entry/LNLogEntry$DupStatus;

    return-object v0
.end method
