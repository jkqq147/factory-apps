.class public final Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;
.super Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;
.source "EmbeddedRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointerFallbackException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "Falling back to endpointer-only recognition"

    invoke-direct {p0, v0}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
