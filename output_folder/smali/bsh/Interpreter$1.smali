.class final Lbsh/Interpreter$1;
.super Ljava/io/FilterInputStream;
.source "Interpreter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/Interpreter;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;

    .line 399
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    return v0
.end method
