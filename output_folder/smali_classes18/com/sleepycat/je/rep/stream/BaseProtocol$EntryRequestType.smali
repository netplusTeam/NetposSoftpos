.class public final enum Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
.super Ljava/lang/Enum;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

.field public static final enum AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

.field public static final enum DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

.field public static final enum NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 860
    new-instance v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 861
    new-instance v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 862
    new-instance v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    const-string v5, "NOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 859
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->$VALUES:[Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 859
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 859
    const-class v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    .locals 1

    .line 859
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->$VALUES:[Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    return-object v0
.end method
