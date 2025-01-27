.class public Lorg/jline/console/ConsoleEngine$ExecutionResult;
.super Ljava/lang/Object;
.source "ConsoleEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/ConsoleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecutionResult"
.end annotation


# instance fields
.field final result:Ljava/lang/Object;

.field final status:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p1, p0, Lorg/jline/console/ConsoleEngine$ExecutionResult;->status:I

    .line 244
    iput-object p2, p0, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result:Ljava/lang/Object;

    .line 245
    return-void
.end method


# virtual methods
.method public result()Ljava/lang/Object;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/jline/console/ConsoleEngine$ExecutionResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/jline/console/ConsoleEngine$ExecutionResult;->status:I

    return v0
.end method
