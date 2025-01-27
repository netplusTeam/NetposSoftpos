.class public final enum Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
.super Ljava/lang/Enum;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum IS_MASTER:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum MEMBER_ACTIVE:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum MEMBER_NOT_FOUND:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field public static final enum TRANSFER_FAIL:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v3, "MEMBER_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_NOT_FOUND:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    new-instance v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v5, "IS_MASTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_MASTER:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    new-instance v5, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v7, "IS_REPLICA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    new-instance v7, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v9, "TRANSFER_FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->TRANSFER_FAIL:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 51
    new-instance v9, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v11, "MEMBER_ACTIVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_ACTIVE:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 49
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->$VALUES:[Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    .locals 1

    .line 49
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->$VALUES:[Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    return-object v0
.end method
