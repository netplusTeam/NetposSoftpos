.class final enum Lorg/jpos/rc/Result$Type;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/rc/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/rc/Result$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/rc/Result$Type;

.field public static final enum FAIL:Lorg/jpos/rc/Result$Type;

.field public static final enum INFO:Lorg/jpos/rc/Result$Type;

.field public static final enum SUCCESS:Lorg/jpos/rc/Result$Type;

.field public static final enum WARN:Lorg/jpos/rc/Result$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 201
    new-instance v0, Lorg/jpos/rc/Result$Type;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/rc/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/rc/Result$Type;->INFO:Lorg/jpos/rc/Result$Type;

    .line 202
    new-instance v1, Lorg/jpos/rc/Result$Type;

    const-string v3, "WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/rc/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/rc/Result$Type;->WARN:Lorg/jpos/rc/Result$Type;

    .line 203
    new-instance v3, Lorg/jpos/rc/Result$Type;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/rc/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/rc/Result$Type;->SUCCESS:Lorg/jpos/rc/Result$Type;

    .line 204
    new-instance v5, Lorg/jpos/rc/Result$Type;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/rc/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/rc/Result$Type;->FAIL:Lorg/jpos/rc/Result$Type;

    .line 200
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jpos/rc/Result$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jpos/rc/Result$Type;->$VALUES:[Lorg/jpos/rc/Result$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/rc/Result$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 200
    const-class v0, Lorg/jpos/rc/Result$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/Result$Type;

    return-object v0
.end method

.method public static values()[Lorg/jpos/rc/Result$Type;
    .locals 1

    .line 200
    sget-object v0, Lorg/jpos/rc/Result$Type;->$VALUES:[Lorg/jpos/rc/Result$Type;

    invoke-virtual {v0}, [Lorg/jpos/rc/Result$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/rc/Result$Type;

    return-object v0
.end method
