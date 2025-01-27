.class public final enum Lorg/jline/console/impl/SystemRegistryImpl$Pipe;
.super Ljava/lang/Enum;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pipe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/console/impl/SystemRegistryImpl$Pipe;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

.field public static final enum AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

.field public static final enum FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

.field public static final enum NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

.field public static final enum OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 59
    new-instance v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v1, "FLIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->FLIP:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    new-instance v1, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v3, "NAMED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    new-instance v3, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v5, "AND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->AND:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    new-instance v5, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    const-string v7, "OR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->OR:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    .line 58
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->$VALUES:[Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/console/impl/SystemRegistryImpl$Pipe;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    return-object v0
.end method

.method public static values()[Lorg/jline/console/impl/SystemRegistryImpl$Pipe;
    .locals 1

    .line 58
    sget-object v0, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->$VALUES:[Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-virtual {v0}, [Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    return-object v0
.end method
