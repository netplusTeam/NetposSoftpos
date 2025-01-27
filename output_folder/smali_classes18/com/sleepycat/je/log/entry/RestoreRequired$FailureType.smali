.class public final enum Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
.super Ljava/lang/Enum;
.source "RestoreRequired.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/entry/RestoreRequired;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

.field public static final enum BTREE_CORRUPTION:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

.field public static final enum LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

.field public static final enum NETWORK_RESTORE:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    const-string v1, "NETWORK_RESTORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->NETWORK_RESTORE:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    new-instance v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    const-string v3, "LOG_CHECKSUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    new-instance v3, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    const-string v5, "BTREE_CORRUPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->BTREE_CORRUPTION:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->$VALUES:[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .locals 1

    .line 34
    sget-object v0, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->$VALUES:[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    return-object v0
.end method
