.class public final enum Lcom/sleepycat/je/utilint/StatDefinition$StatType;
.super Ljava/lang/Enum;
.source "StatDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/StatDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/utilint/StatDefinition$StatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/utilint/StatDefinition$StatType;

.field public static final enum CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

.field public static final enum INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v1, "INCREMENTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition$StatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    .line 35
    new-instance v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v3, "CUMULATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/utilint/StatDefinition$StatType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    .line 33
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->$VALUES:[Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/utilint/StatDefinition$StatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/utilint/StatDefinition$StatType;
    .locals 1

    .line 33
    sget-object v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->$VALUES:[Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/utilint/StatDefinition$StatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    return-object v0
.end method
