.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/keymap/BindingReader;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/keymap/BindingReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda97;->f$0:Lorg/jline/keymap/BindingReader;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda97;->f$0:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0}, Lorg/jline/keymap/BindingReader;->readCharacter()I

    move-result v0

    return v0
.end method
