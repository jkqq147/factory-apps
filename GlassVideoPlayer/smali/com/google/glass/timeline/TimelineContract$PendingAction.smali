.class public final Lcom/google/glass/timeline/TimelineContract$PendingAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/glass/timeline/TimelineContract$PendingActionColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MIME_SUBTYPE:Ljava/lang/String; = "vnd.com.google.glass.sync.timeline.pending_action"

.field public static final TABLE_NAME:Ljava/lang/String; = "pending_actions"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pending_actions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract$PendingAction;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pending_actions"

    .line 290
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
