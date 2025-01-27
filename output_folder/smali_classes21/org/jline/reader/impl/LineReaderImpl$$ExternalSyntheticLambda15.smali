.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/reader/Widget;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda15;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    return-void
.end method


# virtual methods
.method public final apply()Z
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda15;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-virtual {v0}, Lorg/jline/reader/impl/LineReaderImpl;->overwriteMode()Z

    move-result v0

    return v0
.end method
