.class public final enum Lorg/jline/console/CmdLine$DescriptionType;
.super Ljava/lang/Enum;
.source "CmdLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/CmdLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DescriptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/console/CmdLine$DescriptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/console/CmdLine$DescriptionType;

.field public static final enum COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

.field public static final enum METHOD:Lorg/jline/console/CmdLine$DescriptionType;

.field public static final enum SYNTAX:Lorg/jline/console/CmdLine$DescriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lorg/jline/console/CmdLine$DescriptionType;

    const-string v1, "COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/console/CmdLine$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/console/CmdLine$DescriptionType;->COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

    .line 24
    new-instance v1, Lorg/jline/console/CmdLine$DescriptionType;

    const-string v3, "METHOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/console/CmdLine$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/console/CmdLine$DescriptionType;->METHOD:Lorg/jline/console/CmdLine$DescriptionType;

    .line 28
    new-instance v3, Lorg/jline/console/CmdLine$DescriptionType;

    const-string v5, "SYNTAX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/console/CmdLine$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/console/CmdLine$DescriptionType;->SYNTAX:Lorg/jline/console/CmdLine$DescriptionType;

    .line 15
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/console/CmdLine$DescriptionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/console/CmdLine$DescriptionType;->$VALUES:[Lorg/jline/console/CmdLine$DescriptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/console/CmdLine$DescriptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lorg/jline/console/CmdLine$DescriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/console/CmdLine$DescriptionType;

    return-object v0
.end method

.method public static values()[Lorg/jline/console/CmdLine$DescriptionType;
    .locals 1

    .line 15
    sget-object v0, Lorg/jline/console/CmdLine$DescriptionType;->$VALUES:[Lorg/jline/console/CmdLine$DescriptionType;

    invoke-virtual {v0}, [Lorg/jline/console/CmdLine$DescriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/console/CmdLine$DescriptionType;

    return-object v0
.end method
