.class public final enum Lorg/jpos/security/ARPCMethod;
.super Ljava/lang/Enum;
.source "ARPCMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/ARPCMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/ARPCMethod;

.field public static final enum METHOD_1:Lorg/jpos/security/ARPCMethod;

.field public static final enum METHOD_2:Lorg/jpos/security/ARPCMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lorg/jpos/security/ARPCMethod;

    const-string v1, "METHOD_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/security/ARPCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/security/ARPCMethod;->METHOD_1:Lorg/jpos/security/ARPCMethod;

    .line 45
    new-instance v1, Lorg/jpos/security/ARPCMethod;

    const-string v3, "METHOD_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/security/ARPCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/security/ARPCMethod;->METHOD_2:Lorg/jpos/security/ARPCMethod;

    .line 28
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jpos/security/ARPCMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/jpos/security/ARPCMethod;->$VALUES:[Lorg/jpos/security/ARPCMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/ARPCMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/jpos/security/ARPCMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/ARPCMethod;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/ARPCMethod;
    .locals 1

    .line 28
    sget-object v0, Lorg/jpos/security/ARPCMethod;->$VALUES:[Lorg/jpos/security/ARPCMethod;

    invoke-virtual {v0}, [Lorg/jpos/security/ARPCMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/ARPCMethod;

    return-object v0
.end method
