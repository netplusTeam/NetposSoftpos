.class public final enum Lcom/sleepycat/je/tree/INTargetRep$Type;
.super Ljava/lang/Enum;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INTargetRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/tree/INTargetRep$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/tree/INTargetRep$Type;

.field public static final enum DEFAULT:Lcom/sleepycat/je/tree/INTargetRep$Type;

.field public static final enum NONE:Lcom/sleepycat/je/tree/INTargetRep$Type;

.field public static final enum SPARSE:Lcom/sleepycat/je/tree/INTargetRep$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/sleepycat/je/tree/INTargetRep$Type;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INTargetRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/tree/INTargetRep$Type;->DEFAULT:Lcom/sleepycat/je/tree/INTargetRep$Type;

    new-instance v1, Lcom/sleepycat/je/tree/INTargetRep$Type;

    const-string v3, "SPARSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/tree/INTargetRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/tree/INTargetRep$Type;->SPARSE:Lcom/sleepycat/je/tree/INTargetRep$Type;

    new-instance v3, Lcom/sleepycat/je/tree/INTargetRep$Type;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/tree/INTargetRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/tree/INTargetRep$Type;->NONE:Lcom/sleepycat/je/tree/INTargetRep$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/tree/INTargetRep$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/tree/INTargetRep$Type;->$VALUES:[Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/tree/INTargetRep$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lcom/sleepycat/je/tree/INTargetRep$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/tree/INTargetRep$Type;
    .locals 1

    .line 43
    sget-object v0, Lcom/sleepycat/je/tree/INTargetRep$Type;->$VALUES:[Lcom/sleepycat/je/tree/INTargetRep$Type;

    invoke-virtual {v0}, [Lcom/sleepycat/je/tree/INTargetRep$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-object v0
.end method
