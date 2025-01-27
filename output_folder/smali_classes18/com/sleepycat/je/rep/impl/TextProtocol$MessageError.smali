.class public final enum Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
.super Ljava/lang/Enum;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

.field public static final enum BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

.field public static final enum GROUP_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

.field public static final enum NOT_A_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

.field public static final enum VERSION_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1192
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    const-string v1, "BAD_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    const-string v3, "VERSION_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->VERSION_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    const-string v5, "GROUP_MISMATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->GROUP_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v5, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    const-string v7, "NOT_A_MEMBER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->NOT_A_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    .line 1191
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->$VALUES:[Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1191
    const-class v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .locals 1

    .line 1191
    sget-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->$VALUES:[Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    return-object v0
.end method
