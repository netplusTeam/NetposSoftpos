.class public Lcom/sleepycat/je/tree/CursorsExistException;
.super Ljava/lang/Exception;
.source "CursorsExistException.java"


# static fields
.field public static final CURSORS_EXIST:Lcom/sleepycat/je/tree/CursorsExistException;

.field private static final serialVersionUID:J = 0x3ea981caL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/sleepycat/je/tree/CursorsExistException;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/CursorsExistException;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/CursorsExistException;->CURSORS_EXIST:Lcom/sleepycat/je/tree/CursorsExistException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    return-void
.end method
