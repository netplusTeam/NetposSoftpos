.class Lorg/jline/builtins/Source$InputStreamSource$1;
.super Ljava/io/FilterInputStream;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/builtins/Source$InputStreamSource;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/builtins/Source$InputStreamSource;


# direct methods
.method constructor <init>(Lorg/jline/builtins/Source$InputStreamSource;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/builtins/Source$InputStreamSource;
    .param p2, "arg0"    # Ljava/io/InputStream;

    .line 101
    iput-object p1, p0, Lorg/jline/builtins/Source$InputStreamSource$1;->this$0:Lorg/jline/builtins/Source$InputStreamSource;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    return-void
.end method
