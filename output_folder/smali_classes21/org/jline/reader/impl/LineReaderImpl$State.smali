.class public final enum Lorg/jline/reader/impl/LineReaderImpl$State;
.super Ljava/lang/Enum;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/impl/LineReaderImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/impl/LineReaderImpl$State;

.field public static final enum DONE:Lorg/jline/reader/impl/LineReaderImpl$State;

.field public static final enum EOF:Lorg/jline/reader/impl/LineReaderImpl$State;

.field public static final enum IGNORE:Lorg/jline/reader/impl/LineReaderImpl$State;

.field public static final enum INTERRUPT:Lorg/jline/reader/impl/LineReaderImpl$State;

.field public static final enum NORMAL:Lorg/jline/reader/impl/LineReaderImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 120
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/impl/LineReaderImpl$State;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 124
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$State;

    const-string v3, "DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/impl/LineReaderImpl$State;->DONE:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 128
    new-instance v3, Lorg/jline/reader/impl/LineReaderImpl$State;

    const-string v5, "IGNORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/impl/LineReaderImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/impl/LineReaderImpl$State;->IGNORE:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 132
    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$State;

    const-string v7, "EOF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/impl/LineReaderImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/impl/LineReaderImpl$State;->EOF:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 136
    new-instance v7, Lorg/jline/reader/impl/LineReaderImpl$State;

    const-string v9, "INTERRUPT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/reader/impl/LineReaderImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/reader/impl/LineReaderImpl$State;->INTERRUPT:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 116
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jline/reader/impl/LineReaderImpl$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jline/reader/impl/LineReaderImpl$State;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 116
    const-class v0, Lorg/jline/reader/impl/LineReaderImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/impl/LineReaderImpl$State;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/impl/LineReaderImpl$State;
    .locals 1

    .line 116
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$State;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$State;

    invoke-virtual {v0}, [Lorg/jline/reader/impl/LineReaderImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/impl/LineReaderImpl$State;

    return-object v0
.end method
