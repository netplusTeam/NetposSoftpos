.class public final enum Lcom/sleepycat/je/tree/INKeyRep$Type;
.super Ljava/lang/Enum;
.source "INKeyRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INKeyRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/tree/INKeyRep$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/tree/INKeyRep$Type;

.field public static final enum DEFAULT:Lcom/sleepycat/je/tree/INKeyRep$Type;

.field public static final enum MAX_KEY_SIZE:Lcom/sleepycat/je/tree/INKeyRep$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/sleepycat/je/tree/INKeyRep$Type;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INKeyRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/tree/INKeyRep$Type;->DEFAULT:Lcom/sleepycat/je/tree/INKeyRep$Type;

    new-instance v1, Lcom/sleepycat/je/tree/INKeyRep$Type;

    const-string v3, "MAX_KEY_SIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/tree/INKeyRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/tree/INKeyRep$Type;->MAX_KEY_SIZE:Lcom/sleepycat/je/tree/INKeyRep$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/tree/INKeyRep$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/tree/INKeyRep$Type;->$VALUES:[Lcom/sleepycat/je/tree/INKeyRep$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/tree/INKeyRep$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/sleepycat/je/tree/INKeyRep$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INKeyRep$Type;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/tree/INKeyRep$Type;
    .locals 1

    .line 54
    sget-object v0, Lcom/sleepycat/je/tree/INKeyRep$Type;->$VALUES:[Lcom/sleepycat/je/tree/INKeyRep$Type;

    invoke-virtual {v0}, [Lcom/sleepycat/je/tree/INKeyRep$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/tree/INKeyRep$Type;

    return-object v0
.end method
