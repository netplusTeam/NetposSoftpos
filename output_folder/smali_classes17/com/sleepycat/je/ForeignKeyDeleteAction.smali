.class public final enum Lcom/sleepycat/je/ForeignKeyDeleteAction;
.super Ljava/lang/Enum;
.source "ForeignKeyDeleteAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/ForeignKeyDeleteAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/ForeignKeyDeleteAction;

.field public static final enum ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;

.field public static final enum CASCADE:Lcom/sleepycat/je/ForeignKeyDeleteAction;

.field public static final enum NULLIFY:Lcom/sleepycat/je/ForeignKeyDeleteAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;

    const-string v1, "ABORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/ForeignKeyDeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 43
    new-instance v1, Lcom/sleepycat/je/ForeignKeyDeleteAction;

    const-string v3, "CASCADE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/ForeignKeyDeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/ForeignKeyDeleteAction;->CASCADE:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 51
    new-instance v3, Lcom/sleepycat/je/ForeignKeyDeleteAction;

    const-string v5, "NULLIFY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/ForeignKeyDeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/ForeignKeyDeleteAction;->NULLIFY:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 31
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/ForeignKeyDeleteAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/ForeignKeyDeleteAction;->$VALUES:[Lcom/sleepycat/je/ForeignKeyDeleteAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .locals 1

    .line 31
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->$VALUES:[Lcom/sleepycat/je/ForeignKeyDeleteAction;

    invoke-virtual {v0}, [Lcom/sleepycat/je/ForeignKeyDeleteAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/ForeignKeyDeleteAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForeignKeyDeleteAction."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/ForeignKeyDeleteAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
