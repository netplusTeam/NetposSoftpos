.class public final enum Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
.super Ljava/lang/Enum;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

.field public static final enum DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

.field public static final enum FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

.field public static final enum READ:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

.field public static final enum REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 76
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 78
    new-instance v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    const-string v3, "READ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->READ:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 80
    new-instance v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 82
    new-instance v5, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    const-string v7, "REJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 74
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->$VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    const-class v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 1

    .line 74
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->$VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0
.end method
